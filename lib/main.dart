import 'package:flutter/material.dart';
import 'package:masbaha/modules/Screens/HomeScreen.dart';
void main()
{
  runApp(masbaha());
}
class masbaha extends StatelessWidget {
  const masbaha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
