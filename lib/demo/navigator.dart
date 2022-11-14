import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class NavigatorDemo extends StatelessWidget {
//   final String id;
// const NavigatorDemo({ Key? key, required this.id }) : super(key: key);
// // const NavigatorDemo({ Key? key, this.id = 'init id' }) : super(key: key);

//   @override
//   Widget build(BuildContext context){
//     // dynamic arguments = ModalRoute.of(context).settings.arguments;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('点击页面')
//       ),
//       body: CupertinoButton(
//         child: Text('可以点击的按钮1111111'),
//         onPressed: () {
//           print(this.id);
//           print('被点击啦呀');
//         }
//       )
//     );
//   }
// }

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
    print(widget.age);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.id)),
        body: CupertinoButton(
            child: Text('可以点击的按钮1111111'),
            onPressed: () {
              print('被点击啦呀');
            }));
  }
}
