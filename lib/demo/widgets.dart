import 'package:flutter/material.dart';

class WidgetsDemoPage extends StatelessWidget {
  const WidgetsDemoPage({super.key});

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
              mainAxisAlignment: MainAxisAlignment.start, // 主轴对齐方式,Column的主轴为竖轴
              crossAxisAlignment: CrossAxisAlignment.center, // 交叉轴
              children: [
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
                  // 主轴对齐方式,Row的主轴为横轴
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.green,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.red,
                    ),
                  ],
                ),
                Row(
                  // 主轴对齐方式,Row的主轴为横轴
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Image.asset('assets/images/eye.png', fit: BoxFit.none,),
                    ),
                    Expanded(
                      flex: 2,
                      child: Image.asset('assets/images/eye.png'),
                    ),
                    Expanded(
                      flex: 3,
                      child: Image.asset('assets/images/eye.png'),
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
                      Image.asset('assets/images/eye.png'),
                    ],
                  ),
                ),
                // ListTile
                ListTile(
                  title: const Text(
                    '1625 Main Street',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: const Text('My City, CA 99984'),
                  leading: Icon(
                    Icons.restaurant_menu,
                    color: Colors.blue[500],
                  ),
                ),
                const Divider(),
                ListTile(
                  title: const Text(
                    '(408) 555-1212',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  leading: Icon(
                    Icons.contact_phone,
                    color: Colors.blue[500],
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
