// import 'package:flutter/material.dart';
// 统一使用IOS风格
import 'package:flutter/cupertino.dart';

import './user/login.dart';
import './user/register.dart';
import './pages/home.dart';

// Map<String, Widget Function(BuildContext)> routes = {
//   "/": (context) => HomePage(),
//   "/login": (context) => Login(), // 也可以写成 "/login": (context){return Login()}
//   "/register": (context) => Register()
//   // '/main': (context) => MainTabBarView(),
//   // '/verifyInfo': (context) => VerifyInfoController(),   // 我的页面- 认证信息
//   // '/pwdManager': (context) => PwdManagerController(),   // 我的页面- 密码管理
//   // '/webviewLoadHTTP': (context) => WebviewLoadHTTP(),   // webView加载HTTP URL
//   // '/webviewLoadHTML': (context) => WebviewLoadHTML(),   // webView加载HTML
//   // '/checkUpdate': (context) => CheckUpdateController(),  // 我的页面- 检查版本更新
// };

Map routes = {
  '/': (content) => HomePage(),
  '/login': (context) => Login(),
  '/register': (context, {arguments}) => Register(arguments: arguments),
};

// 固定写法
var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    // 有arguments参数走这里
    if (settings.arguments != null) {
      // 统一使用IOS风格
      final Route route = CupertinoPageRoute(
      // final Route route = MaterialPageRoute(
          settings: settings,
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      // 没有arguments参数走这里
      // 统一使用IOS风格
      final Route route = CupertinoPageRoute(
      // final Route route = MaterialPageRoute(
          settings: settings,
          builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
