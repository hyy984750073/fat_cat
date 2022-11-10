import 'package:flutter/material.dart';

class Trigger extends StatelessWidget {
const Trigger({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      // 点击
      onTap:() {
        print('单击了');
        // Navigator.of(context).push(MaterialPageRoute(
        //   builder: (context) {
        //     // 对应页面
        //     return MenuPage()
        //   },
        // ));
      },
      // 双击
      onDoubleTap: () {
        print('双击了');
      },
      child: const Text('点击'),
    );
  }
}
