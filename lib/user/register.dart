import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  final Map arguments;
  const Register({super.key, required this.arguments});
  // const Register({ Key? key }) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  void initState() {
    super.initState();
    // print(widget.arguments);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('注册页'),
      ),
      body: Center(
          child: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil('/tabs', (route) => false);
            },
            child: const Text('首页'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(15);
            },
            child: const Text('返回带参数'),
          ),
        ],
      )),
    );
  }
}
