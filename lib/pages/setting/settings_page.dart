import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../adminOnry/admin_home_page.dart';
import '../adminOnry/admin_login_page.dart';
import 'app_info_page.dart';
import 'inquiry_page.dart';
import 'policy_page.dart';
import 'terms_page.dart';
import '../chat/plan_selection_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool _isAdminLoggedIn = false;

  @override
  void initState() {
    super.initState();
    _checkAdminLoginStatus();
  }

  Future<void> _checkAdminLoginStatus() async {
    User? user = _auth.currentUser;
    if (user != null) {
      DocumentSnapshot adminDoc = await _firestore.collection('Admin').doc(user.uid).get();
      setState(() {
        _isAdminLoggedIn = adminDoc.exists;
      });
    } else {
      setState(() {
        _isAdminLoggedIn = false;
      });
    }
  }

  void _handleAdminLogin() {
    if (_isAdminLoggedIn) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AdminHomePage()),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AgentLoginPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('設定'),
        backgroundColor: Theme.of(context).canvasColor,
        elevation: .6,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('AI相談機能活用方法・概要'),
            leading: const Icon(Icons.subscriptions),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PlanSelectionPage()),
              );
            },
          ),
          ListTile(
            title: const Text('プライバシーポリシー'),
            leading: const Icon(Icons.privacy_tip),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PolicyPage()),
              );
            },
          ),
          ListTile(
            title: const Text('利用規約'),
            leading: const Icon(Icons.description),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TermsPage()),
              );
            },
          ),
          ListTile(
            title: const Text('お問い合わせ'),
            leading: const Icon(Icons.contact_mail),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const InquiryPage()),
              );
            },
          ),
          ListTile(
            title: const Text('アプリ情報'),
            leading: const Icon(Icons.info),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AppInfoPage()),
              );
            },
          ),
          if (_isAdminLoggedIn) // 管理者ログイン状態の場合にのみ表示
            ListTile(
              title: const Text('管理者ログイン'),
              leading: const Icon(Icons.login),
              onTap: _handleAdminLogin,
            ),
        ],
      ),
    );
  }
}
