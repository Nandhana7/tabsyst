import 'package:flutter/material.dart';
import 'package:tabsyst/add_user.dart';
import 'package:tabsyst/mypro.dart';

import 'edit_user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      home:  Mypro(),
    );
  }
}


