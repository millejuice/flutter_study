import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Size screenSize = MediaQuery.of(context).size;
  double width =screenSize.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: Container(),
        title: const Text('My Quiz APP',style: TextStyle(color: Colors.white),),
      centerTitle: true,
      ),
      body: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/quiz.png', height: width*0.8,),
          const Padding(padding: EdgeInsets.only(top: 20)),
          const Text('플러터 퀴즈 앱', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),),
          const Text('퀴즈를 듣기 전 안내사항입니다\n꼼꼼히 읽고 퀴즈 풀기를 눌러주세요.',textAlign: TextAlign.center,),
          const Padding(padding: EdgeInsets.only(top: 20)),
          checkBox(double, '1.랜덤으로 나오는 퀴즈 3개를 물어보세요'),
          checkBox(double, '2.문제를 잘 읽고 정답을 고른 뒤\n다음 문제 버튼을 눌러주세요'),
          checkBox(double, '3.만점을 향해 도전해보세요!'),
          const Padding(padding: EdgeInsets.all(20)),
          ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
            minimumSize: Size(width*0.8,50), backgroundColor: Colors.deepPurple,
          ),child: const Text('지금 퀴즈 풀기', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
        ],
      )
    );
  }
  Widget checkBox(double,title){
      return Container(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          children: [
            const Icon(Icons.check_box),
            Text(title),
            const Padding(padding: EdgeInsets.only(top:50))
          ],
        ),

      );
  }
}