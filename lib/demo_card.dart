import 'package:flutter/material.dart';

class DemoCard extends StatelessWidget {
  const DemoCard({
    super.key,
    required this.cardTitle,
    required this.children,
  });

  final String cardTitle;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    // 获取屏幕宽度
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      // 限制宽度为屏幕的80%
      width: screenWidth * 0.8,
      child: Card(
        // 设置Card的阴影颜色
        shadowColor: Colors.grey,
        // 设置Card的阴影强度（暂时可以这么理解）
        elevation: 10,
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    cardTitle,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 118, 118, 118)
                    ),
                  ),
                ],
              ),
              SizedBox(
                // 限制分割线的宽度为屏幕宽度的60%
                width: screenWidth * 0.6,
                height: 1,
                // 分割线组件
                child: Divider(height: 100, color: Colors.black,)
              ),
              // Padding组件，可以为组件添加内边距
              Padding(
                padding: const EdgeInsets.all(8.0),
                // Wrap组件可以让其内部的子组件大小溢出时自动换行，从而避免溢出
                child: Wrap(
                  spacing: 5.0,
                  children: children,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}