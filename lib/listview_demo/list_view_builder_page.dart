import 'dart:math';

import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatelessWidget {
  const ListViewBuilderPage({super.key});

  /// 生成随机颜色
  Color _genRandomColor() {
    Random rand = Random();
    int red = rand.nextInt(256);
    int green = rand.nextInt(256);
    int blue = rand.nextInt(256);
    return Color.fromARGB(255, red, green, blue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wow！一堆随机色块！"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 40,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Text(
                "遭到特殊对待的文本😭\nTips: 可以往下滑",
                style: TextStyle(fontSize: 25),
              );
            }
            return Container(
              // 尝试设置width的宽，但是没有作用，请思考这是为什么
              width: 10,
              height: 30,
              color: _genRandomColor(),
              child: Text(
                "色块 $index",
                // 让文字颜色也随机
                style: TextStyle(color: _genRandomColor()),
              ),
            );
        },
      )),
    );
  }
}
