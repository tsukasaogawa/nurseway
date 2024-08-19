import 'package:flutter/material.dart';
import 'ippen_2023_page.dart';
import 'ippen_2022_page.dart';
import 'ippen_2021_page.dart';
import 'ippen_2020_page.dart';
import 'ippen_2019_page.dart';
import 'ippen_2018_page.dart';
import 'ippen_2017_page.dart';
import 'ippen_2016_page.dart';
import 'ippen_2015_page.dart';
import 'ippen_2024_page.dart';

class IppanListPage extends StatefulWidget {
  final void Function(double progress) onUpdateProgress;

  const IppanListPage({super.key, required this.onUpdateProgress});

  @override
  _IppanListPageState createState() => _IppanListPageState();
}

class _IppanListPageState extends State<IppanListPage> {
  Map<String, int> completedQuestions = {
    '2023': 150,
    '2022': 130,
    '2021': 140,
    '2020': 120,
    '2019': 110,
    '2018': 160,
    '2017': 100,
    '2016': 90,
    '2015': 80,
    '2024': 70,
  };

  void _updateTotalProgress() {
    int totalCompletedQuestions = completedQuestions.values.reduce((a, b) => a + b);
    int totalQuestions = completedQuestions.length * 190;
    double progress = totalCompletedQuestions / totalQuestions;
    widget.onUpdateProgress(progress);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('一般・状況設定問題'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFB3E5FC), Color(0xFF81D4FA), Color(0xFF4FC3F7)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 10),
              buildProgressButton(context, '2024', completedQuestions['2024']!),
              const SizedBox(height: 10),
              buildProgressButton(context, '2023', completedQuestions['2023']!),
              const SizedBox(height: 10),
              buildProgressButton(context, '2022', completedQuestions['2022']!),
              const SizedBox(height: 10),
              buildProgressButton(context, '2021', completedQuestions['2021']!),
              const SizedBox(height: 10),
              buildProgressButton(context, '2020', completedQuestions['2020']!),
              const SizedBox(height: 10),
              buildProgressButton(context, '2019', completedQuestions['2019']!),
              const SizedBox(height: 10),
              buildProgressButton(context, '2018', completedQuestions['2018']!),
              const SizedBox(height: 10),
              buildProgressButton(context, '2017', completedQuestions['2017']!),
              const SizedBox(height: 10),
              buildProgressButton(context, '2016', completedQuestions['2016']!),
              const SizedBox(height: 10),
              buildProgressButton(context, '2015', completedQuestions['2015']!),
              const SizedBox(height: 10),
              buildProgressButton(context, '2014', completedQuestions['2014']!),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProgressButton(BuildContext context, String title, int lastCompletedQuestion) {
    double progress = lastCompletedQuestion / 190.0;
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Widget targetPage;
            switch (title) {
              case '2023':
                targetPage = Ippan2023Page(
                  lastCompletedQuestion: lastCompletedQuestion,
                  onProgressUpdate: (int newCompletedQuestions) {
                    setState(() {
                      completedQuestions[title] = newCompletedQuestions;
                      _updateTotalProgress();
                    });
                  },
                );
                break;
              case '2022':
                targetPage = Ippan2022Page(
                  lastCompletedQuestion: lastCompletedQuestion,
                  onProgressUpdate: (int newCompletedQuestions) {
                    setState(() {
                      completedQuestions[title] = newCompletedQuestions;
                      _updateTotalProgress();
                    });
                  },
                );
                break;
              case '2021':
                targetPage = Ippan2021Page(
                  lastCompletedQuestion: lastCompletedQuestion,
                  onProgressUpdate: (int newCompletedQuestions) {
                    setState(() {
                      completedQuestions[title] = newCompletedQuestions;
                      _updateTotalProgress();
                    });
                  },
                );
                break;
              case '2020':
                targetPage = Ippan2020Page(
                  lastCompletedQuestion: lastCompletedQuestion,
                  onProgressUpdate: (int newCompletedQuestions) {
                    setState(() {
                      completedQuestions[title] = newCompletedQuestions;
                      _updateTotalProgress();
                    });
                  },
                );
                break;
              case '2019':
                targetPage = Ippan2019Page(
                  lastCompletedQuestion: lastCompletedQuestion,
                  onProgressUpdate: (int newCompletedQuestions) {
                    setState(() {
                      completedQuestions[title] = newCompletedQuestions;
                      _updateTotalProgress();
                    });
                  },
                );
                break;
              case '2018':
                targetPage = Ippan2018Page(
                  lastCompletedQuestion: lastCompletedQuestion,
                  onProgressUpdate: (int newCompletedQuestions) {
                    setState(() {
                      completedQuestions[title] = newCompletedQuestions;
                      _updateTotalProgress();
                    });
                  },
                );
                break;
              case '2017':
                targetPage = Ippan2017Page(
                  lastCompletedQuestion: lastCompletedQuestion,
                  onProgressUpdate: (int newCompletedQuestions) {
                    setState(() {
                      completedQuestions[title] = newCompletedQuestions;
                      _updateTotalProgress();
                    });
                  },
                );
                break;
              case '2016':
                targetPage = Ippan2016Page(
                  lastCompletedQuestion: lastCompletedQuestion,
                  onProgressUpdate: (int newCompletedQuestions) {
                    setState(() {
                      completedQuestions[title] = newCompletedQuestions;
                      _updateTotalProgress();
                    });
                  },
                );
                break;
              case '2015':
                targetPage = Ippan2015Page(
                  lastCompletedQuestion: lastCompletedQuestion,
                  onProgressUpdate: (int newCompletedQuestions) {
                    setState(() {
                      completedQuestions[title] = newCompletedQuestions;
                      _updateTotalProgress();
                    });
                  },
                );
                break;
              case '2024':
                targetPage = Ippan2014Page(
                  lastCompletedQuestion: lastCompletedQuestion,
                  onProgressUpdate: (int newCompletedQuestions) {
                    setState(() {
                      completedQuestions[title] = newCompletedQuestions;
                      _updateTotalProgress();
                    });
                  },
                );
                break;
              default:
                targetPage = Container(); // Default case, replace as necessary
                break;
            }
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => targetPage),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 10), backgroundColor: Colors.transparent, // ボタンの内側の余白を調整
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30), // ボタンの形状
            ), // ボタンの背景色を透明に設定
            elevation: 0, // 影の設定を解除
          ),
          child: Ink(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFFB3E5FC), Color(0xFF81D4FA), Color(0xFF4FC3F7)], // 薄水色のグラデーションカラー
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30), // ボタンの形状
            ),
            child: Container(
              constraints: const BoxConstraints(minWidth: double.infinity, minHeight: 55), // ボタンの最小サイズ
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontSize: 18, color: Colors.black), // テキスト色
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: LinearProgressIndicator(
                      value: progress,
                      backgroundColor: Colors.grey[300],
                      valueColor: const AlwaysStoppedAnimation<Color>(Colors.blueAccent), // 進捗バーの色を青に設定
                      minHeight: 5,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '達成率: $lastCompletedQuestion/190',
                    style: const TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
