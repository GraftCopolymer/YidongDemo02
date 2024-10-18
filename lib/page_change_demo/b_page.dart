import 'package:flutter/material.dart';

class BPage extends StatefulWidget {
  const BPage({super.key});

  @override
  State<BPage> createState() => _BPageState();
}

class _BPageState extends State<BPage> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("在横线输入文字然后点击提交"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _textEditingController,
            ),
            ElevatedButton(
              onPressed: (){
                // 将用户输入的字符串数据返回给上级页面
                Navigator.of(context).pop<String>(_textEditingController.text);
              }, 
              child: Text("提交")
            )
          ],
        ),
      ),
    );
  }
}