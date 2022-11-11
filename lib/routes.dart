import 'package:flutter/material.dart';
import './user/login.dart';
import './user/register.dart';

Map<String, Widget Function(BuildContext)> routes = {
  "/login": (context) => Login(),
  "/register": (context) => Register()
  // '/main': (context) => MainTabBarView(),
  // '/verifyInfo': (context) => VerifyInfoController(),   // 我的页面- 认证信息
  // '/pwdManager': (context) => PwdManagerController(),   // 我的页面- 密码管理
  // '/webviewLoadHTTP': (context) => WebviewLoadHTTP(),   // webView加载HTTP URL
  // '/webviewLoadHTML': (context) => WebviewLoadHTML(),   // webView加载HTML
  // '/checkUpdate': (context) => CheckUpdateController(),  // 我的页面- 检查版本更新
};