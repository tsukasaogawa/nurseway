import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({super.key});

  @override
  _AdminHomePageState createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  List<QueryDocumentSnapshot> inquiries = [];
  List<String> announcements = []; // 既存のお知らせを保存するリスト

  @override
  void initState() {
    super.initState();
    _fetchInquiries();
    _fetchAnnouncements(); // お知らせを取得
  }

  Future<void> _fetchInquiries() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    QuerySnapshot inquiriesSnapshot = await firestore.collection('inquiries').orderBy('timestamp', descending: true).get();

    setState(() {
      inquiries = inquiriesSnapshot.docs;
    });
  }

  Future<void> _fetchAnnouncements() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    QuerySnapshot announcementsSnapshot = await firestore.collection('announcements').orderBy('timestamp', descending: true).get();

    setState(() {
      announcements = announcementsSnapshot.docs.map((doc) => doc['content'] as String).toList();
    });
  }

  void _showAddAnnouncementDialog() {
    showDialog(
      context: context,
      builder: (context) {
        String newAnnouncement = '';

        return AlertDialog(
          title: const Text('お知らせを追加'),
          content: TextField(
            onChanged: (value) {
              newAnnouncement = value;
            },
            decoration: const InputDecoration(
              hintText: 'お知らせの内容を入力してください',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('キャンセル'),
            ),
            TextButton(
              onPressed: () {
                if (newAnnouncement.isNotEmpty && !announcements.contains(newAnnouncement)) {
                  FirebaseFirestore.instance.collection('announcements').add({
                    'content': newAnnouncement,
                    'timestamp': FieldValue.serverTimestamp(),
                  });
                  announcements.add(newAnnouncement); // リストに追加
                }
                Navigator.of(context).pop();
              },
              child: const Text('追加'),
            ),
          ],
        );
      },
    );
  }

  void _showEditAnnouncementDialog(DocumentSnapshot announcement) {
    showDialog(
      context: context,
      builder: (context) {
        String updatedAnnouncement = announcement['content'];

        return AlertDialog(
          title: const Text('お知らせを編集'),
          content: TextField(
            onChanged: (value) {
              updatedAnnouncement = value;
            },
            controller: TextEditingController(text: announcement['content']),
            decoration: const InputDecoration(
              hintText: 'お知らせの内容を入力してください',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('キャンセル'),
            ),
            TextButton(
              onPressed: () {
                if (updatedAnnouncement.isNotEmpty) {
                  FirebaseFirestore.instance.collection('announcements').doc(announcement.id).update({
                    'content': updatedAnnouncement,
                  });
                  _fetchAnnouncements(); // 更新後に再取得
                }
                Navigator.of(context).pop();
              },
              child: const Text('更新'),
            ),
          ],
        );
      },
    );
  }

  void _showDeleteConfirmationDialog(DocumentSnapshot announcement) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('お知らせを削除'),
          content: const Text('このお知らせを削除してもよろしいですか？'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('キャンセル'),
            ),
            TextButton(
              onPressed: () {
                FirebaseFirestore.instance.collection('announcements').doc(announcement.id).delete();
                _fetchAnnouncements(); // 削除後に再取得
                Navigator.of(context).pop();
              },
              child: const Text('削除'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('管理者ホーム'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InquiryListPage()),
                );
              },
              child: const Text('問い合わせ内容'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _showAddAnnouncementDialog,
              child: const Text('お知らせを追加'),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance.collection('announcements').orderBy('timestamp', descending: true).snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  final announcements = snapshot.data!.docs;
                  return ListView.builder(
                    itemCount: announcements.length,
                    itemBuilder: (context, index) {
                      final announcement = announcements[index];
                      return Card(
                        margin: const EdgeInsets.all(10.0),
                        child: ListTile(
                          title: Text('お知らせ: ${announcement['content']}'),
                          subtitle: Text('追加日時: ${announcement['timestamp'].toDate()}'),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () {
                                  _showEditAnnouncementDialog(announcement);
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () {
                                  _showDeleteConfirmationDialog(announcement);
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InquiryListPage extends StatelessWidget {
  const InquiryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('問い合わせ内容'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('inquiries').orderBy('timestamp', descending: true).snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          final inquiries = snapshot.data!.docs;
          return ListView.builder(
            itemCount: inquiries.length,
            itemBuilder: (context, index) {
              final inquiry = inquiries[index];
              return Card(
                margin: const EdgeInsets.all(10.0),
                child: ListTile(
                  title: Text('件名: ${inquiry['subject']}'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('名前: ${inquiry['name']}'),
                      Text('会社名: ${inquiry['companyName']}'),
                      Text('メールアドレス: ${inquiry['email']}'),
                      Text('送信者タイプ: ${inquiry['senderType']}'),
                      const SizedBox(height: 8),
                      Text('内容: ${inquiry['inquiry']}'),
                      Text('送信日時: ${inquiry['timestamp'].toDate()}'),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
