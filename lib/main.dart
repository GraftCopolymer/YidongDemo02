import 'dart:async';

import 'package:demo02/gesture_detector_demo/custom_button_page.dart';
import 'package:demo02/demo_card.dart';
import 'package:demo02/http_demo/get_baidu_page.dart';
import 'package:demo02/listview_demo/list_view_builder_page.dart';
import 'package:demo02/listview_demo/list_view_page.dart';
import 'package:demo02/provider_demo/counter.dart';
import 'package:demo02/provider_demo/provider_counter_page.dart';
import 'package:demo02/page_change_demo/a_page.dart';
import 'package:demo02/shared_preferences_demo/sp_utils.dart';
import 'package:demo02/stateful_widget_demo/counter_page.dart';
import 'package:demo02/user_input_demo/user_input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  // 初始化SPUtils
  await SPUtils.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create:(context) => Counter(),)
      ],
      child: const MainApp()
    )
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
          textTheme: TextTheme(
              titleMedium: TextStyle(fontSize: 23),
              bodyMedium: TextStyle(fontSize: 20))),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "移动第三次培训Demo",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              DemoCard(cardTitle: "ListView 演示", children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(CupertinoPageRoute(
                        builder: (context) {
                          return ListViewPage();
                        },
                      ));
                    },
                    child: Text("基本用法")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return ListViewBuilderPage();
                        },
                      ));
                    },
                    child: Text("ListView.builder() 用法")),
              ]),
              DemoCard(cardTitle: "页面跳转 演示", children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(CupertinoPageRoute(
                        builder: (context) {
                          return Scaffold(
                            appBar: AppBar(
                              title: Text("基本用法主页全是（（"),
                            ),
                          );
                        },
                      ));
                    },
                    child: Text("基本用法")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return APage();
                        },
                      ));
                    },
                    child: Text("返回页面数据")),
              ]),
              DemoCard(cardTitle: "StatefulWidget 演示", children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(CupertinoPageRoute(
                        builder: (context) {
                          return CounterPage();
                        },
                      ));
                    },
                    child: Text("计数器")),
              ]),
              DemoCard(cardTitle: "用户输入 演示", children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(CupertinoPageRoute(
                        builder: (context) {
                          return UserInputPage();
                        },
                      ));
                    },
                    child: Text("输入框的样式")),
              ]),
              DemoCard(cardTitle: "Provider 演示", children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(CupertinoPageRoute(
                        builder: (context) {
                          return ProviderCounterPage();
                        },
                      ));
                    },
                    child: Text("Provider版计数器")),
              ]),
              DemoCard(cardTitle: "网络请求 演示", children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(CupertinoPageRoute(
                        builder: (context) {
                          return GetBaiduPage();
                        },
                      ));
                    },
                    child: Text("获取百度主页的HTML")),
              ]),
              DemoCard(cardTitle: "GestureDetector 演示", children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return CustomButtonPage();
                        },
                      ));
                    },
                    child: Text("自定义按钮")),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
