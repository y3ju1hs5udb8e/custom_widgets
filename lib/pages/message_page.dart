import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Message Page'),
      ),
      body: const Center(
        child: Text('Message Page'),
      ),
    );
  }
}
