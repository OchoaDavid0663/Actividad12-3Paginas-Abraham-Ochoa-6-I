
import 'package:flutter/material.dart';
import 'package:myapp/home_page.dart';
import 'package:myapp/page1.dart';
import 'package:myapp/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/page1': (context) => const Page1(),
        '/page2': (context) => const Page2(),
      },
    );
  }
}
