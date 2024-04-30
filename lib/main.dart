import 'package:flutter/material.dart';
import 'package:custom_widgets/custon_bottombar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Custome Widgets',
      debugShowCheckedModeBanner: false,
      home: CustomBottomBar(),
    );
  }
}

// 
