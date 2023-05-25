import 'package:flutter/material.dart';

class bottombar extends StatelessWidget {
  const bottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 50,
      child: Container(
        child: const TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          tabs: [
          Tab(
            icon: Icon(Icons.home),
            child: Text('Home', style: TextStyle(fontSize: 9, )),
          ),
          Tab(
            icon: Icon(Icons.add_a_photo),
            child: Text('2nd', style: TextStyle(fontSize: 9, )),
          ),
          Tab(
            icon: Icon(Icons.three_k),
            child: Text('3rd', style: TextStyle(fontSize: 9, )),
          ),
          Tab(
            icon: Icon(Icons.four_k),
            child: Text('4th', style: TextStyle(fontSize: 9, )),
          )
        ]
        ),
      ),
    );
  }
}