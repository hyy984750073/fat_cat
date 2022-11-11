// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class Login extends StatefulWidget {
//   const Login({ Key? key }) : super(key: key);

//   @override
//   _LoginState createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('登录')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               '这里是登录页面',
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, "/register", );
//               },
//               // onPressed: null,
//               child: Text('去注册'),
//             ),
//             // CupertinoButton(
//             //   child: Text('去注册'),
//             //   onPressed: () {
//             //     Navigator.pushNamed(context, "/register", arguments: null);
//             //   },
//             // )
//             // ElevatedButton.icon(
//             //   onPressed: () {
//             //     // Navigator.pushReplacementNamed(context, '/register');
//             //     Navigator.pushNamed(context, '/register');
//             //   },
//             //   onTap: () {
//             //     // Navigator.pushReplacementNamed(context, '/register');
//             //     Navigator.pushNamed(context, '/register');
//             //   },
//             //   icon: Icon(Icons.ac_unit),
//             //   label: Text('去到注册页'),
//             // ),
//           ]
//         )
//       ),
//     );
//   }
// }

class Login extends StatelessWidget {
const Login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('登录')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '这里是登录页面',
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/register", );
              },
              // onPressed: null,
              child: Text('去注册'),
            ),
            // CupertinoButton(
            //   child: Text('去注册'),
            //   onPressed: () {
            //     Navigator.pushNamed(context, "/register", arguments: null);
            //   },
            // )
            // ElevatedButton.icon(
            //   onPressed: () {
            //     // Navigator.pushReplacementNamed(context, '/register');
            //     Navigator.pushNamed(context, '/register');
            //   },
            //   onTap: () {
            //     // Navigator.pushReplacementNamed(context, '/register');
            //     Navigator.pushNamed(context, '/register');
            //   },
            //   icon: Icon(Icons.ac_unit),
            //   label: Text('去到注册页'),
            // ),
          ]
        )
      ),
    );
  }
}