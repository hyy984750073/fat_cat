/**配置成统一使用IOS页面切换风格
 * 1、将 import 'package:flutter/material.dart';  替换成  import 'package:flutter/cupertino.dart';
 * 2、将 MaterialPageRoute 替换成 CupertinoPageRoute
 */

import 'package:flutter/material.dart';
import './user/login.dart';
import './user/register.dart';
import './tabs/tabs.dart';
import './demo/widgets.dart';
import './demo/grid_view_demo.dart';
import './demo/long_view.dart';
import './demo/wrap_view.dart';
import './demo/stack_view.dart';

// Map<String, Widget Function(BuildContext)> routes = {
//   "/": (context) => HomePage(),
//   "/login": (context) => Login(), // 也可以写成 "/login": (context){return Login()}
//   "/register": (context) => Register()
// };

Map routes = {
  '/': (content) => const TabsView(),
  '/tabs': (context) => const TabsView(),
  '/login': (context) => const Login(),
  '/register': (context, {arguments}) => Register(arguments: arguments),
  '/widgets': (context) => const WidgetsDemoPage(),
  '/grid-view': (context) => const GridViewDemoPage(),
  '/long-view': (context) => const LongViewDemoPage(),
  '/wrap-view': (context) => const WrapViewDemoPage(),
  '/stack-view': (context) => const StackViewDemoPage(),
};

// 固定写法
var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          settings: settings,
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route = MaterialPageRoute(
          settings: settings,
          builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
