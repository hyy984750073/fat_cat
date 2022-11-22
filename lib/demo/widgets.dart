import 'package:flutter/material.dart';

class WidgetsDemoPage extends StatelessWidget {
  const WidgetsDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: const Color(0xfff4f5f6),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Demo'),
        ),
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.black26,
            border: Border.all(width: 10, color: Colors.black38),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start, // 主轴对齐方式
              children: [
                Image.asset(
                  'assets/images/eye.png',
                  fit: BoxFit.none,
                ),
                Icon(
                  Icons.star,
                  color: Colors.red[500],
                ),
                const Center(
                  child: Text(
                    'Hello World',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                     Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.red,
                    ),
                  ],
                ),
              ]),
        ));
  }
}
