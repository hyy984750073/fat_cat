import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // <FormState>  泛型   表单的状态
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // TextEditingController就是在OC中UITextFeild 控件 [TextEditingController.addListener].监听输入框输入字符 类似于UITextFeild的textvalueDidChange代理
  final TextEditingController _controllerPassword = TextEditingController();
  final TextEditingController _controllerUser = TextEditingController();
  final FocusNode _userNode = FocusNode();
  final FocusNode _passwordNode = FocusNode();
  // FocusScopeNode _focusScopeNode;

  // 进来时
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  // 退出时
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // 退出时注释掉那些很占用内存的东西，否则占用内存
    _controllerPassword.dispose();
    _controllerUser.dispose();
    _userNode.dispose();
    _passwordNode.dispose();
    // if (_focusScopeNode != null) _focusScopeNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('登录'),
        automaticallyImplyLeading: false,
      ),
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
                  // 表单输入框，是可以校验的
                  TextFormField(
                    autofocus: true, // 自动获取焦点
                    // 捕捉监听TextField的焦点获取与失去，同时也可通过FocusNode来使用绑定对应的TextField获取焦点与失去焦点
                    focusNode: _userNode,
                    controller: _controllerUser,
                    decoration: const InputDecoration(
                      hintText: '账号',
                      prefixIcon: Icon(Icons.usb_rounded), // 框内
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return '请输入您的手机号/邮箱';
                      } else if (value.length < 8) {
                        return '长度大于8';
                      }
                      return null;
                    },
                    // 输入类型：搜索类型，则输入法有搜索
                    textInputAction: TextInputAction.next,
                    // 当我们按回车时
                    onFieldSubmitted: (val) {
                      print('ssd');
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // 单纯输入框
                  TextField(
                    controller: _controllerPassword,
                    obscureText: true, // 是否为密码框
                    focusNode: _passwordNode,
                    decoration: const InputDecoration(
                      // icon: Icon(Icons.unsubscribe_outlined), // 框外
                      // border: OutlineInputBorder(), // 是否有边框
                      prefixIcon: Icon(Icons.unsubscribe_outlined), // 框内
                      labelText: '密码',
                      hintText: '默认文字',
                    ),
                    onChanged: (val) {
                      // print(val);
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        print('密码${_controllerPassword.text}');
                        print('账号${_controllerUser.text}');
                        print(_formKey.currentState!.validate().toString());

                        // // 为空的时候给它赋值
                        // if (_focusScopeNode == null) {
                        //   _focusScopeNode = FocusScope.of(context);
                        // }
                        // // 有值之后,将光标给到‘账号’
                        // _focusScopeNode.requestFocus(_userNode);
                        // // 不想要焦点,可以让界面所有的焦点消失
                        // _focusScopeNode.unfocus();

                        /**
                         * (_formKey.currentState as FormState).validate()
                         * 可以写成
                         * _formKey.currentState!.validate()
                        */
                        // if ((_formKey.currentState as FormState).validate()) {
                        if (_formKey.currentState!.validate()) {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              '/tabs', (route) => false);
                        }
                      },
                      child: const Text('登录'),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      var toRegister = Navigator.pushNamed(context, "/register",
                          arguments: {'phone': '15278061180', 'age': 15});

                      toRegister.then((value) => print(value));
                    },
                    child: const Text('去注册'),
                  ),
                ])),
      )),
    );
  }
}
