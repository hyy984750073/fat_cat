import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetsDemoPage extends StatefulWidget {
  const WidgetsDemoPage({super.key});

  @override
  State<WidgetsDemoPage> createState() => _WidgetsDemoPageState();
}

class _WidgetsDemoPageState extends State<WidgetsDemoPage> {
  bool _check = true;
  bool _switch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: const Color(0xfff4f5f6),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Demo'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.black26,
            border: Border.all(width: 10, color: Colors.black38),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          child: Column(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start, // 主轴对齐方式,Column的主轴为竖轴
              crossAxisAlignment: CrossAxisAlignment.center, // 交叉轴
              children: [
                // 居中
                const Center(
                  child: Text(
                    'Hello World',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Roboto',
                      letterSpacing: 0.5,
                      fontSize: 20,
                    ),
                  ),
                ),
                Row(
                  children: [
                    // 复选框
                    Checkbox(
                        value: _check,
                        onChanged: (val) {
                          setState(() {
                            _check = val!;
                          });
                        }),
                    // 开关
                    Switch(
                        value: _switch,
                        onChanged: (val) {
                          setState(() {
                            _switch = val;
                          });
                        }),
                    // 网络图片
                    Image.network(
                      'https://bkimg.cdn.bcebos.com/pic/f636afc379310a55b319e1d3600c54a98226cffcbac9?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2U5Mg==,g_7,xp_5,yp_5',
                      width: 70,
                    ),
                    // Icon按钮
                    IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                  ],
                ),
                const SizedBox(height: 8),
                // 进度指示器 横线
                const LinearProgressIndicator(
                  value: .8,
                  valueColor: AlwaysStoppedAnimation(Colors.red),
                ),
                const SizedBox(height: 8),
                // 进度指示器 环形
                const CircularProgressIndicator(
                  value: .8,
                  valueColor: AlwaysStoppedAnimation(Colors.red),
                ),
                // loading  IOS风格
                const CupertinoActivityIndicator(),


                InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    debugPrint('Card tapped.');
                  },
                  child: const SizedBox(
                    width: 300,
                    height: 20,
                    child: Text('A card that can be tapped'),
                  ),
                ),
                // 水平方向列表
                Row(
                  // 主轴对齐方式,Row的主轴为横轴  MainAxisAlignment为枚举类
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Image.asset('assets/images/eye.png',
                          fit: BoxFit.contain, // 图片填充模式
                          color: Colors.red,
                          height: 50),
                    ),
                    Expanded(
                      flex: 2,
                      child: Image.asset('assets/images/eye.png', height: 50),
                    ),
                    Expanded(
                      flex: 3,
                      child: Image.asset(
                        'assets/images/eye.png',
                        height: 50,
                      ),
                    ),
                  ],
                ),
                // 卡片
                Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start, // 交叉轴
                    children: [
                      const SizedBox(
                        width: 120,
                        child: Text('123456'),
                      ),
                      Image.asset('assets/images/eye.png', height: 60),
                    ],
                  ),
                ),
                // ListTile
                const ListTile(
                  title: Text(
                    '1625 Main Street',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text('My City, CA 99984'),
                  leading: Icon(
                    Icons.restaurant_menu,
                    color: Colors.red,
                  ),
                ),
                const Divider(),
                const ListTile(
                  title: Text(
                    '(408) 555-1212',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  leading: Icon(
                    Icons.contact_phone,
                    color: Color(0xffC9BA9B),
                  ),
                ),
                ListTile(
                  title: const Text('costa@example.com'),
                  leading: Icon(
                    Icons.contact_mail,
                    color: Colors.blue[500],
                  ),
                ),
              ]),
        ));
  }
}
