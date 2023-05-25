import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Topbar();
  }

}

class Topbar extends StatelessWidget{
  const Topbar({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(children: [
        Image.asset('images/netflix-symbol-black.png',
         fit: BoxFit.contain,
         height: 25,
         )
      ]),
    );
  }
}