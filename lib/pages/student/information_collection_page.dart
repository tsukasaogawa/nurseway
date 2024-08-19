import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class InformationCollectionPage extends StatefulWidget {
  const InformationCollectionPage({super.key});

  @override
  _InformationCollectionPageState createState() => _InformationCollectionPageState();
}

class _InformationCollectionPageState extends State<InformationCollectionPage> {
  final Map<String, TextEditingController> _controllers = {
    '日付': TextEditingController(),
    '時間': TextEditingController(),
    '体温': TextEditingController(),
    '脈拍': TextEditingController(),
    '血圧': TextEditingController(),
    '呼吸数': TextEditingController(),
    'SpO2': TextEditingController(),
    '尿': TextEditingController(),
    '便': TextEditingController(),
    '食事': TextEditingController(),
    '呼吸音': TextEditingController(),
    '脚部動き': TextEditingController(),
  };

  Future<void> _savePdf() async {
    try {
      final pdf = pw.Document();
      final fontData = await rootBundle.load('assets/fonts/Murecho/static/Murecho-Regular.ttf');
      final font = pw.Font.ttf(fontData.buffer.asByteData());

      pdf.addPage(
        pw.Page(
          build: (pw.Context context) {
            return pw.Table(
              border: pw.TableBorder.all(color: PdfColors.black),
              children: [
                ..._controllers.keys.map((key) {
                  return pw.TableRow(children: [
                    pw.Container(
                      padding: const pw.EdgeInsets.all(8),
                      child: pw.Text(key, style: pw.TextStyle(fontSize: 12, font: font)),
                    ),
                    ...List.generate(5, (index) => pw.Container(
                      padding: const pw.EdgeInsets.all(8),
                      child: pw.Text('', style: pw.TextStyle(font: font)),
                    )),
                  ]);
                }).toList(),
                // 空白の表を3行追加
                ...List.generate(3, (index) {
                  return pw.TableRow(children: [
                    pw.Container(
                      padding: const pw.EdgeInsets.all(8),
                      child: pw.Text('', style: pw.TextStyle(fontSize: 12, font: font)),
                    ),
                    ...List.generate(5, (index) => pw.Container(
                      padding: const pw.EdgeInsets.all(8),
                      child: pw.Text('', style: pw.TextStyle(font: font)),
                    )),
                  ]);
                }),
              ],
            );
          },
        ),
      );

      final output = await getTemporaryDirectory();
      final file = File('${output.path}/information_collection.pdf');
      await file.writeAsBytes(await pdf.save());

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('PDFが保存されました: ${file.path}')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('PDFの保存中にエラーが発生しました: $e')),
      );
    }
  }

  @override
  void dispose() {
    _controllers.forEach((key, controller) {
      controller.dispose();
    });
    super.dispose();
  }

  TableRow _buildTextField(String label, TextEditingController controller) {
    return TableRow(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
          ),
          child: Text(label, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Murecho')),
        ),
        ...List.generate(5, (index) => Container(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
        )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('情報収集テンプレ', style: TextStyle(fontFamily: 'Murecho')),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF81D4FA), Color(0xFF0288D1)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: _savePdf,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Table(
              border: TableBorder.all(color: Colors.black),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                ..._controllers.keys.map((key) {
                  return _buildTextField(key, _controllers[key]!);
                }).toList(),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _savePdf(),
              child: const Text('PDFに保存', style: TextStyle(fontFamily: 'Murecho')),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: const InformationCollectionPage(),
    theme: ThemeData(
      fontFamily: 'Murecho',
    ),
  ));
}
