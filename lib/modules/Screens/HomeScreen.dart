import 'dart:core';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
var tasbeeh = 0, index = 0,round=0;
List<String> list_tasbeeh  = [
  "سبحان اللَه",
  "الحمد للًه ",
  "اللَّهُ أَكْبَرُ",
];
class _HomeScreenState extends State<HomeScreen> {

  void restart() {
    setState(() {
      tasbeeh = 0;
      index = 0;
      round=0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'فَذَكِّرْ إِن نَّفَعَتِ الذِّكْرَى',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 20,
        flexibleSpace: Image(image: AssetImage('assets/images/isla.png'),
          fit: BoxFit.cover,),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/isla.png'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(list_tasbeeh [index],
              style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      // bottomLeft
                        offset: Offset(0, 0),
                        color: Color.fromRGBO(212, 172, 13 ,1),
                        blurRadius: 20),
                  ]
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(45),
                      topLeft: Radius.circular(45),
                      bottomLeft: Radius.circular(15)),
                  color: Colors.white),
              child: Text(
                  ' عدد التسبيحات ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.redAccent,
                  )
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              '$tasbeeh',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      // bottomLeft
                        offset: Offset(0, 0),
                        color: Color.fromRGBO(212, 172, 13 ,1),
                        blurRadius: 20),
                  ]
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 150,
              height: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 6,
                ),
              ),
              child: TextButton(
                onPressed: (){
                  setState(() {
                    tasbeeh++;
                    if (index == 0 && tasbeeh == 34) {
                      index = 1;
                      tasbeeh = 0;
                    } else if (index == 1 && tasbeeh == 34) {
                      index = 2;
                      tasbeeh = 0;
                    } else if (index == 2 && tasbeeh == 34) {
                      index = 0;
                      tasbeeh = 0;
                      round++;
                    }
                  });
                },
                child: Text(
                  ' اضغط ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 65,
            ),
            Row(
              children: [
                Container(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        restart();
                      });
                    },
                    child: Text(
                      ' البدء من جديد ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: 120,
                ),
                Text(
                  ' $round : الدورة رقم  ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
