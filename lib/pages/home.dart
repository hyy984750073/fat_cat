import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('首页')),
      body: Center(
          child: Column(
        children: [
          Text('这里是首页'),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text('去登录')),
        ],
      )),
    );
  }
}
