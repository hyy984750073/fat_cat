import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({ Key? key }) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册页'),
      ),
      body: Center(
        child: Text('这里是注册页'),
      ),
    );
  }
}
// class Register extends StatelessWidget {
// const Register({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('注册页'),
//       ),
//       body: Center(
//         child: Text('这里是注册页'),
//       ),
//     );
//   }
// }