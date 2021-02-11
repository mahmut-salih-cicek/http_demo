import 'package:flutter/material.dart';
import 'package:http_demo/screens/main_screen.dart';
import 'package:flutter/services.dart';

   void main(){
     runApp(HttpDemo());
      SystemChrome.setSystemUIOverlayStyle(
     SystemUiOverlayStyle( statusBarColor: Colors.transparent, 
     systemNavigationBarColor: Colors.white
     ), 
     ); 
   }

class HttpDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}