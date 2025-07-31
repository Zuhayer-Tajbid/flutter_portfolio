import 'package:flutter/material.dart';
import 'package:portfolio/screens/desktop.dart';
import 'package:portfolio/screens/mobile.dart';
import 'package:portfolio/screens/tablet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zuhayer Tajbid',
      theme: ThemeData(
       
      ),
      home:
      LayoutBuilder(builder: (context, constraints) {
        if(constraints.maxWidth<600) {
          return Mobile();
        }
        else if(constraints.maxWidth>600 && constraints.maxWidth<1220){
          return Tablet();
        }
        else{
          return Desktop();
        }
      },)
    );
  }
}

