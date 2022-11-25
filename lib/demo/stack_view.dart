import 'package:flutter/material.dart';

class StackViewDemoPage extends StatefulWidget {
  const StackViewDemoPage({super.key});

  @override
  State<StackViewDemoPage> createState() => _StackViewDemoPageState();
}

class _StackViewDemoPageState extends State<StackViewDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('层叠布局页面')),
      // Stack 类似于h5的position:fixed；  也有相对的属性
      // body: Container(
      //   color: Colors.black12,
      //   width: double.infinity,
      //   height: 150,
      //   child: Stack(
      //     // 相对于父元素的对齐方式
      //     alignment: AlignmentDirectional.bottomCenter,
      //     children: [
      //       Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.amber,
      //       ),
      //       Container(
      //         height: 50,
      //         width: 50,
      //         color: Colors.greenAccent,
      //       ),
      //       Positioned(child: Container(color: Colors.redAccent,))
      //     ],
      //   ),
      // ),
      body: Stack(
        // 相对于父元素的对齐方式
        alignment: AlignmentDirectional.center,
        fit: StackFit.expand, // 用于决定Positioned
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.amber,
          ),
          Container(
            height: 100,
            width: 50,
            color: Colors.greenAccent,
          ),
          /**
           * 若是Positioned设置了宽高，子widget将不生效
           * 同时设置了top和bottom的话，不能再设置height
           * 同时设置了left和right的话，不能再设置width
           * 并且在父元素之外，超出父元素的地方将不显示
           */
          Positioned(
              // top: 10,
              // left: 10,
              // right: 10,
              // bottom: 10,
              height: 80,
              width: 80,
              child: Container(
                height: 200, // 不生效
                width: 250, // 不生效
                color: Colors.redAccent,
              ))
        ],
      ),
    );
  }
}
