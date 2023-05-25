import 'package:flutter/material.dart';
import 'package:netflix/screen/bottombar.dart';
import 'package:netflix/screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Juhyun Netfix',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
      ),
      home:  DefaultTabController(length: 4, 
      child: Scaffold(
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics()
          ,children: [
          const HomePage(),
          Container(child: const Center(child: Text('2nd')),),
          Container(child: const Center(child: Text('3rd')),),
          Container(child: const Center(child: Text('4th'))),
        ],),
        bottomNavigationBar: const bottombar(),
      ),
      ),
    );
  }
}

