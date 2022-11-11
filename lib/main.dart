import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './action/trigger_demo.dart';
import './demo/navigator.dart';
import './routes.dart';
import './user/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp 包含主题，路由等，需当根节点
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: routes,
      home: const Login()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  // 状态
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // 头部左右边的导航
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            // 自己写的点击事件
            Trigger(),
            CupertinoButton(
              child: Text('可以点击的按钮'),
              onPressed: () {
                print('被点击啦');
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    // 对应页面 路由传参
                    return NavigatorDemo(id: '1234');
                  },
                  settings: RouteSettings(
                    name: 'menu',
                    arguments: {'name': 'Lisa'}
                  ),
                )).then((value) => print(value));
              }
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
