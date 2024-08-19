import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class InquiryPage extends StatefulWidget {
  const InquiryPage({super.key});

  @override
  _InquiryPageState createState() => _InquiryPageState();
}

class _InquiryPageState extends State<InquiryPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _companyNameController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _inquiryController = TextEditingController();
  String senderType = 'ユーザー様';
  String subject = 'アプリについて';

  Future<void> _sendInquiry() async {
    if (_formKey.currentState!.validate()) {
      await FirebaseFirestore.instance.collection('inquiries').add({
        'companyName': _companyNameController.text,
        'name': _nameController.text,
        'email': _emailController.text,
        'inquiry': _inquiryController.text,
        'senderType': senderType,
        'subject': subject,
        'timestamp': FieldValue.serverTimestamp(),
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('お問い合わせ内容が送信されました')),
      );

      _companyNameController.clear();
      _nameController.clear();
      _emailController.clear();
      _inquiryController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('お問い合わせ'),
        backgroundColor: Theme.of(context).canvasColor,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20), // AppBarとの間にスペースを追加
              const Text(
                '選択してください',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile<String>(
                      title: const Text('ユーザー様'),
                      value: 'ユーザー様',
                      groupValue: senderType,
                      onChanged: (value) {
                        setState(() {
                          senderType = value!;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile<String>(
                      title: const Text('その他'),
                      value: 'その他',
                      groupValue: senderType,
                      onChanged: (value) {
                        setState(() {
                          senderType = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              _buildTextField('会社名', _companyNameController),
              const SizedBox(height: 20),
              _buildTextField(
                'お名前',
                _nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'お名前を入力してください';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              _buildTextField(
                'メールアドレス',
                _emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'メールアドレスを入力してください';
                  }
                  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return '有効なメールアドレスを入力してください';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              const Text(
                '件名を選択してください',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              _buildDropdownButton(),
              const SizedBox(height: 20),
              _buildTextField('お問い合わせ内容', _inquiryController, maxLines: 5),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: _sendInquiry,
                  child: const Text('送信'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText, TextEditingController controller, {int maxLines = 1, FormFieldValidator<String>? validator}) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8.0,
            offset: Offset(0, 2),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          border: InputBorder.none,
        ),
        validator: validator,
      ),
    );
  }

  Widget _buildDropdownButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8.0,
            offset: Offset(0, 2),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButtonFormField<String>(
        value: subject,
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
        items: const [
          DropdownMenuItem(
            value: 'アプリについて',
            child: Text('アプリについて'),
          ),
          DropdownMenuItem(
            value: 'その他',
            child: Text('その他'),
          ),
        ],
        onChanged: (value) {
          setState(() {
            subject = value!;
          });
        },
      ),
    );
  }
}
