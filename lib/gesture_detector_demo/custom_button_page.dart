import 'package:demo02/gesture_detector_demo/custom_button.dart';
import 'package:flutter/material.dart';

class CustomButtonPage extends StatelessWidget {
  const CustomButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("自定义按钮"),
      ),
      body: Center(
        child: Column(
          children: [
            CustomButton(
              onPressed: () {
                print("⚡️电满了⚡️");
              },
              child: Text("⚡️点我!"),
            ),
            Text("注意观察控制台")
          ],
        ),
      ),
    );
  }
}