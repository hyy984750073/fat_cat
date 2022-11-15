import 'package:flutter/material.dart';
class NavigatorDemo extends StatefulWidget {
  final String id;
  final int age;
  // 这里如果是const的话，上面定义的得是final
  // required必须排在前面
  // const NavigatorDemo({super.key, this.id = 'init id'});
  const NavigatorDemo({super.key, required this.id, this.age = 14});

  @override
  State<NavigatorDemo> createState() => _NavigatorDemoState();
}

class _NavigatorDemoState extends State<NavigatorDemo> {
  @override
  void initState() {
    super.initState();
    // print(widget.age);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.id)),
        body: TextButton(
            child: const Text('返回上一页'),
            onPressed: () {
              // 返回上一页
              Navigator.pop(context);
            }));
  }
}
