import 'package:demo02/provider_demo/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderCounterPage extends StatelessWidget {
  const ProviderCounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider版计数器"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Provider.of<Counter>(context, listen: false).increase();
              },
              child: Consumer<Counter>(
                builder: (context, counter, child) {
                  return Text("点击次数: ${counter.count}");
                },
              ),
            ),
            Text("你会发现退出当前页面后重新进入，计数会被保留，这就是Provider的魅力")
          ],
        ),
      ),
    );
  }
}