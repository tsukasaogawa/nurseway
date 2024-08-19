import 'package:flutter/material.dart';
import 'package:nurseway_app/pages/JobSupport/JobTips/resignation_process_page.dart';
import 'package:nurseway_app/pages/JobSupport/JobTips/resume_writing_page.dart';
import 'package:nurseway_app/pages/JobSupport/JobTips/schedule_management_page.dart';
import 'package:nurseway_app/pages/JobSupport/JobTips/self_pr_page.dart';
import 'after_joining_page.dart';
import 'agent_utilization_page.dart';
import 'career_history_page.dart';
import 'interview_preparation_page.dart';
import 'job_selection_page.dart';

class JobTipsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('転職のコツ'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFC8E6C9), Color(0xFFA5D6A7), Color(0xFF81C784)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          JobTipButton(
            title: '履歴書の書き方',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResumeWritingPage()),
              );
            },
          ),
          JobTipButton(
            title: '面接の準備',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InterviewPreparationPage()),
              );
            },
          ),
          JobTipButton(
            title: '自己PRのポイント',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SelfPRPage()),
              );
            },
          ),
          JobTipButton(
            title: '転職先の選び方',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => JobSelectionPage()),
              );
            },
          ),
          JobTipButton(
            title: '職務経歴書の書き方',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CareerHistoryPage()),
              );
            },
          ),
          JobTipButton(
            title: '転職活動のスケジュール管理',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScheduleManagementPage()),
              );
            },
          ),
          JobTipButton(
            title: '転職エージェントの活用方法',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AgentUtilizationPage()),
              );
            },
          ),
          JobTipButton(
            title: '退職手続きの流れ',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResignationProcessPage()),
              );
            },
          ),
          JobTipButton(
            title: '入社後の心構え',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AfterJoiningPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class JobTipButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const JobTipButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFFC8E6C9), Color(0xFFA5D6A7), Color(0xFF81C784)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(fontSize: 18.0, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
