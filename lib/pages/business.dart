import 'package:flutter/material.dart';

class BusinessView extends StatelessWidget {
  const BusinessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Business')),
      body: const Center(
        child: Text('Business'),
      )
    );
  }
}