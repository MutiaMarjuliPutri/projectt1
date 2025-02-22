import 'package:flutter/material.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
        backgroundColor: Colors.purple,
      ),
      body: const Center(
        child: Text(
          'Ini Page Pertama',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
