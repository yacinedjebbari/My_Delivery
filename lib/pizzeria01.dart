//https://stackoverflow.com/questions/51463515/inkwell-not-showing-ripple-when-used-with-container-decoration
//https://www.youtube.com/watch?v=43m9GvHhO3k
//https://www.youtube.com/watch?v=Lz-lB_f5w3I&list=PLVaasf-927w4T1f42loBJDEYbQP1wd9VB&index=3




// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:delivery/main.dart';

void main() {
  runApp(MaterialApp(
    //home: MyMenu(),

  ),);
  
}

class MyMenu extends StatefulWidget {
  const MyMenu({Key? key}) : super(key: key);

  @override
  State<MyMenu> createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  @override
 // Widget build(BuildContext context) {
   // return MaterialApp(

        Widget build(BuildContext context) {
   return new Container(
  child: Material(
    color: Colors.deepOrangeAccent,
    child: InkWell(
      splashColor: const Color(0x8034b0fc),
      onTap: () {},
        child: Ink.image(image:AssetImage('Images/image1.png'), 
      width: 500, height: 200,),
      
    ),
  ),
 );
}





      /* 
      home: Scaffold(
      body: Center(
      child:
      InkWell(
        splashColor: Colors.black26,
        onTap: () {},
      child: Ink.image(image:AssetImage("Images/image1.png"), 
      width: 500, height: 200,),
      ),
      ),
    ),*/
 //   );
 // }
}