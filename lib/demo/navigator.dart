import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  final String id;
const NavigatorDemo({ Key? key, required this.id }) : super(key: key);

  @override
  Widget build(BuildContext context){
    // dynamic arguments = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('点击页面')
      ),
      body: CupertinoButton(
        child: Text('可以点击的按钮1111111'),
        onPressed: () {
          print(this.id);
          print('被点击啦呀');
        }
      )
    );
  }
}