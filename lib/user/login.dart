import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../routes.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('登录')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '这里是登录页面',
            ),
            // TextButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, "/register", );
            //   },
            //   // onPressed: null,
            //   child: Text('去注册'),
            // ),
            CupertinoButton(
              child: Text('去注册'),
              onPressed: () {
                Navigator.pushNamed(context, "/register", arguments: null);
              },
            )
          ]
        )
      ),
    );
  }
}