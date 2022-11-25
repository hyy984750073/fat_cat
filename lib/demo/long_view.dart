import 'package:flutter/material.dart';

class LongViewDemoPage extends StatefulWidget {
  const LongViewDemoPage({super.key});

  @override
  State<LongViewDemoPage> createState() => _LongViewDemoPageState();
}

class _LongViewDemoPageState extends State<LongViewDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('可滚动页面')),
      body: ListView(
        children: [
          // Column(
          //   children: [
          //     Container(height: 120, width: double.infinity, color: Colors.red, child: const Text('壹1111')),
          //     Container(height: 120, width: double.infinity, color: Colors.green, child: const Text('贰2222')),
          //     Container(height: 120, width: double.infinity, color: Colors.yellow, child: const Text('叁')),
          //     Container(height: 120, width: double.infinity, color: Colors.purple, child: const Text('肆')),
          //     Container(height: 120, width: double.infinity, color: Colors.pink, child: const Text('伍')),
          //     Container(height: 120, width: double.infinity, color: Colors.blue, child: const Text('陆')),
          //     Container(height: 120, width: double.infinity, color: Colors.orange, child: const Text('柒')),
          //     Container(height: 120, width: double.infinity, color: Colors.red, child: const Text('捌')),
          //     Container(height: 120, width: double.infinity, color: Colors.green, child: const Text('玖')),
          //     Container(height: 120, width: double.infinity, color: Colors.yellow, child: const Text('拾')),
          //   ],
          // ),
          // GridView.count(
          //   crossAxisSpacing: 1,
          //   mainAxisSpacing: 2,
          //   crossAxisCount: 2,
          //   children: <Widget> [
          //     Icon(Icons.ac_unit_rounded,color: Colors.blue[500],),
          //     // Icon(Icons.ac_unit_rounded),
          //     // Icon(Icons.ac_unit_rounded),
          //     // Icon(Icons.ac_unit_rounded),
          //     // Icon(Icons.ac_unit_rounded),
          //     // Icon(Icons.ac_unit_rounded),
          //     // Icon(Icons.ac_unit_rounded),
          //     // Icon(Icons.ac_unit_rounded),
          //     // Icon(Icons.ac_unit_rounded),
          //   ],
          // ),
          Container(height: 120, width: double.infinity, color: Colors.red, child: const Text('壹1111')),
          Container(height: 120, width: double.infinity, color: Colors.green, child: const Text('贰2222')),
          Container(height: 120, width: double.infinity, color: Colors.yellow, child: const Text('叁')),
          Container(height: 120, width: double.infinity, color: Colors.purple, child: const Text('肆')),
          Container(height: 120, width: double.infinity, color: Colors.pink, child: const Text('伍')),
          Container(height: 120, width: double.infinity, color: Colors.blue, child: const Text('陆')),
          Container(height: 120, width: double.infinity, color: Colors.orange, child: const Text('柒')),
          Container(height: 120, width: double.infinity, color: Colors.red, child: const Text('捌')),
          Container(height: 120, width: double.infinity, color: Colors.green, child: const Text('玖')),
          Container(height: 120, width: double.infinity, color: Colors.yellow, child: const Text('拾')),
        ],
      ),
    );
  }
}
