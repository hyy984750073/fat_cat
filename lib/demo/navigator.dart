import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
const NavigatorDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('点击页面')
      ),
      body: CupertinoButton(
        child: Text('可以点击的按钮1111111'),
        onPressed: () {
          print('被点击啦');
        }
      )
    );
  }
}