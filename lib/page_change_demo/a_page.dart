import 'package:demo02/page_change_demo/b_page.dart';
import 'package:flutter/material.dart';

class APage extends StatefulWidget {
  const APage({super.key});

  @override
  State<APage> createState() => _APageState();
}

class _APageState extends State<APage> {
  String _input = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("页面返回数据"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                // 这里的跳转页面的代码发生了变化，注意这段代码要和BPage中的返回逻辑结合起来看
                String? res = await Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                  return BPage();
                },));
                setState(() {
                  _input = res ?? "";
                });
              },
              child: Text('前往B页面'),
            ),
            Text("你输入的内容: $_input")
          ],
        ),
      ),
    );
  }
}