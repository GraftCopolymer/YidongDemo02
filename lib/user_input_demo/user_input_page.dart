import 'package:flutter/material.dart';

class UserInputPage extends StatelessWidget {
  const UserInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("用户输入Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: TextField(
                // 使用InputDecoration来定义输入框的属性
                onChanged: (value) {
                  debugPrint("输入框内容: $value");
                },
                decoration: InputDecoration(
                  label: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.favorite),
                      Text("输入文本吧")
                    ],
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Text("输入时请注意观察控制台输出")
          ],
        ),
      ),
    );
  }
}