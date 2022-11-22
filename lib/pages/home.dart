import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: const Color(0xfff4f5f6),
      // backgroundColor: const Color(0xff000000),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('口袋工作室'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [Image.asset('assets/images/banner.png')],
            ),
          ),
          const Text('\t  服务保障', // 文本缩进
              style: TextStyle(
                fontSize: 17,
                height: 2.0,
                color: Color(0xff333333),
              )),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text('去登录')),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/widgets');
              },
              child: const Text('去Demo页面查看')),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/grid-view');
              },
              child: const Text('去网格布局页面查看')),
        ],
      ),
    );
  }
}
