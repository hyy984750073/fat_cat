import 'package:flutter/material.dart';

class WrapViewDemoPage extends StatefulWidget {
  const WrapViewDemoPage({super.key});

  @override
  State<WrapViewDemoPage> createState() => _WrapViewDemoPageState();
}

class _WrapViewDemoPageState extends State<WrapViewDemoPage> {
  // 声明一个数组
  List<int> list = [];

  @override
  void initState() {
    super.initState();
    for(var i = 0; i < 20; i++) {
      list.add(i);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('流式布局')),
      body: Wrap(
        spacing: 10.0, // 添加空格
        runSpacing: 10.0, // 添加纵轴的间隔
        direction: Axis.horizontal, // 方向
        alignment: WrapAlignment.center, // 对齐方式
        children: list.map((e) => Container(
          height: 100,
          width: 100,
          color: Colors.blue,
          child: Text(e.toString()),
        )).toList(),
      ),
    );
  }
}