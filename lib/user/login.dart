import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('登录')),
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage('assets/images/login.webp'),
              fit: BoxFit.fill,
            ),
          ),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: '账号',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return '请输入您的手机号/邮箱';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate will return true if the form is valid, or false if
                      // the form is invalid.
                      if (_formKey.currentState!.validate()) {
                        // Process data.
                      }
                    },
                    child: const Text('登录'),
                  ),
                ),
                // TextField(),
                // const Text(
                //   '这里是登录页面',
                // ),
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
        )
      ),
    );
  }
}

// class Login extends StatelessWidget {
// const Login({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context){
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