// ignore_for_file: unnecessary_import

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Scrol extends StatefulWidget {
  const Scrol({Key? key}) : super(key: key);


  @override
  _ScrolState createState() => _ScrolState();
}

class _ScrolState extends State<Scrol> {
  late ScrollController _scrollController;
  late Timer _timer;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      _currentIndex++;
      if (_currentIndex >= 4) {
        _currentIndex = 0;
      }
      _scrollController.animateTo(
        _currentIndex * 500.0,
        duration: Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          controller: _scrollController,
          child: Row(
            children: [
              Image.asset("Images/image3.jpeg", width: 500, height: 320,),
              Image.asset("Images/image2.jpeg", width: 500, height: 320,),
              Image.asset("Images/image1.jpeg", width: 500, height: 320,),
              Image.asset("Images/image4.jpeg", width: 500, height: 320,),


            ],
          ),
        ),
        floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            FloatingActionButton(
            onPressed: () {
      _currentIndex--;
      if (_currentIndex < 0) {
      _currentIndex = 3;
      }
      _scrollController.animateTo(
      _currentIndex * 500.0,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      );
      },
        child: Icon(Icons.arrow_left),
      ),
      FloatingActionButton(
          onPressed: () {
            _currentIndex++;
            if (_currentIndex >= 4) {
              _currentIndex = 0;
            }
            _scrollController.animateTo(
              _currentIndex * 500.0,
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          },

      child: Icon(Icons.arrow_right),
    ),
    ],
    ),
    ),
    );
  }
}
