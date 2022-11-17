import 'package:flutter/material.dart';

class BusinessView extends StatelessWidget {
  const BusinessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('每日学习')),
      body: const Center(
        child: Text('每日学习'),
      )
    );
  }
}