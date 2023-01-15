//import 'dart:html';
//import 'dart:io';

//https://www.youtube.com/watch?v=hL09elg37OE&list=PLT2KSPhMMiqq-bkRqjauB27yiZV0ybCNK&index=3
import 'dart:async';
import 'dart:io';
// import 'dart:ui';
import 'package:delivery/Splash.dart';
import 'package:delivery/pizzeria01.dart';
import 'package:delivery/stores.dart';
// import 'package:delivery/views/login.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:delivery/home.dart';



void main() {
  runApp(const MaterialApp(
    home: Splash(),
     //home: MyStore(),
    debugShowCheckedModeBanner: false,

  ));
}

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
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      _currentIndex++;
      if (_currentIndex >= 4) {
        _currentIndex = 0;
      }
      _scrollController.animateTo(
        _currentIndex * 500.0,
        duration: Duration(milliseconds: 500),
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

    var sect1 = [
      '  Home',
      '           TRANSACTIONS',
      '  Acounts',
      '  Cards',
      '  Paiement',
      '  Transfert',
      '  Applications',
      '  Templates',
      '  CardLess Transactions',
      '  BaridiPay',
      '  Zakat',
      '           INFORMATIONS',
      '  ATM & Branches',
      '  News',
      '  Contacts',
    ];

    var ic_sect1=[
      Icons.account_balance,
      Icons.workspaces,
      Icons.account_circle,
      Icons.account_balance_wallet_sharp,
      Icons.attach_money,
      Icons.compare_arrows_rounded,
      Icons.account_balance_wallet_sharp,
      Icons.stars_sharp,
      Icons.view_in_ar,
      Icons.ad_units,
      Icons.volunteer_activism,
      Icons.workspaces,
      Icons.location_on,
      Icons.fiber_new,
      Icons.phone,

    ];

    var Pizzeria=[
      'Pizzeria 01',
      'Pizzeria 02',
      'Pizzeria 03',
      'Sup 01',

    ];

    var Superettes=[
      'Epicerie 01',
      'Epicerie 02',
      'Epicerie 03',
      'Sup 01',
      'Sup 02',
      'Sup 03',

    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(' MY_Delivery'),
          actions: <Widget>[
            Container(
              child: Row(
                children:[
                  IconButton(
                    icon: Icon(
                      Icons.shopping_cart_rounded,
                      color: Colors.white,
                    ),
                    onPressed: () async {
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    onPressed: () async {
                    },
                  ),
                  IconButton(
                    icon:
                    Icon(
                      Icons.add_to_home_screen_rounded,
                      color: Colors.white,
                    ),
                    onPressed: () async {
                      exit(0);
                    },
                  ),
                ],
              ),
            ),



          ],
          backgroundColor: Colors.deepOrange,
        ),

        body:
        Stack(
          children: <Widget>[
          SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: _scrollController,
                  child:
                  Row(
                  children: [
                    Image.asset("Images/image1.png", width: 500, height: 200,),
                    Image.asset("Images/image2.png", width: 500, height: 200,),
                    Image.asset("Images/image3.png", width: 500, height: 200,),
                    Image.asset("Images/image4.png", width: 500, height: 200,),
                  ],
                ),
                ),
            Container(
              margin: EdgeInsets.only(top: 200.0),
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.deepOrange,
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Promotions :', style: TextStyle(color: Colors.white, fontSize: 22),),
                      Container(
                        width: double.infinity,
                        height: 100.0,
                        //padding: EdgeInsets.all(10.0),
                        //color: Colors.white.withOpacity(0.7),
                        child:
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          //controller: ScrollController(),
                          child:

                          Row(
                            children: [
                              ClipRRect(borderRadius: BorderRadius.circular(60),child: Image.asset("Images/image1.png", width: 300, height: 150,)),
                              ClipRRect(borderRadius: BorderRadius.circular(60),child: Image.asset("Images/image2.png", width: 300, height: 150,)),
                              ClipRRect(borderRadius: BorderRadius.circular(60),child: Image.asset("Images/image3.png", width: 300, height: 150,)),
                              ClipRRect(borderRadius: BorderRadius.circular(60),child: Image.asset("Images/image4.png", width: 300, height: 150,)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 25,),
                      Text('Pizzeria :', style: TextStyle(color: Colors.white, fontSize: 20),),
                      Container(
                        width: double.infinity,
                        height: 220.0,
                        padding: EdgeInsets.all(10.0),
                        //color: Colors.white.withOpacity(0.7),
                        decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(15)),),
                        child:
                        GridView.builder(
                          itemCount: Pizzeria.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 4.0,
                              mainAxisSpacing: 4.0
                          ),
                          itemBuilder: (BuildContext context, int index){
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: 
                              [
                                Material(
                                color: Colors.transparent,
                                child: InkWell(
                                    splashColor: const Color(0x8034b0fc),
                                onTap: () {      Navigator.push(
                                                              context,
                                                              MaterialPageRoute(builder: (context) => MyStore()),
                                                              );
                                          },
                                child: Container(
                                                child: CircleAvatar(
                                                                    radius: 40,
                                                                    backgroundColor: Colors.blueAccent,
                                                                    child: 
                                  CircleAvatar( radius: 35, backgroundImage : AssetImage('Images/'+Pizzeria[index]+'.png')),
                                                                  ),
                                                ),
                                // Image.asset('Images/'+Pizzeria[index]+'.png', width: 100, height: 70,),      
                                                ),
                                          ),
                                          Text(Pizzeria[index], style: TextStyle(color: Colors.black, fontSize: 12),)
                              ]
                              
                              /*[ 
                                CircleAvatar(
                                  radius: 45,
                                backgroundColor: Colors.blueAccent,
                                child: 
                                CircleAvatar( radius: 40, backgroundImage : AssetImage('Images/'+Pizzeria[index]+'.png')),
                                ),
                                //Image.asset('Images/'+Pizzeria[index]+'.png', width: 100, height: 70,),
                                Text(Pizzeria[index], style: TextStyle(color: Colors.black, fontSize: 12),)
                              ],*/
                            );
                          },
                        ),
                      ),



                      SizedBox(height: 10,),
                      Text('Superettes :', style: TextStyle(color: Colors.white, fontSize: 20),),
                      Container(
                        width: double.infinity,
                        height: 220.0,
                        padding: EdgeInsets.all(10.0),
                        //color: Colors.white.withOpacity(0.7),
                        decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(15)),),
                        
                        child:
                        GridView.builder(
                            itemCount: Superettes.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 4.0,
                                mainAxisSpacing: 4.0
                            ),
                            itemBuilder: (BuildContext context, int index){
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(radius: 40,
                                  backgroundColor: Colors.greenAccent,
                                  child:
                                  CircleAvatar(
                                    radius: 35,
                                  backgroundImage : AssetImage('Images/'+Superettes[index]+'.png')),
                                  
                                  ),
                                  
                                  //Image.asset('Images/'+Superettes[index]+'.png', width: 100, height: 70,),
                                  Text(Superettes[index], style: TextStyle(color: Colors.black, fontSize: 12),)
                                ],
                              );
                            },
                          ),
                      ),
                      SizedBox(height: 10,),
                      Text('DMY-Technology             MY-Delivery V 1.0  @ 2023',style: TextStyle(fontSize: 12, color: Colors.black38)),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),

        drawer: Drawer(
          backgroundColor: Colors.blue.withOpacity(0.36),

          child:
          ListView.builder(
              itemCount: sect1.length,
              itemBuilder: (context, index){
                return ListTile(title:MyTitlesect(sect1[index], ic_sect1[index]));
              }
          ),
      ),
    ),
      debugShowCheckedModeBanner: false,
    );
  }
}

  Widget MyTitlesect(String text, IconData icon) {
    return Container(
      child: Row(
          children: [
            Icon(icon, color: Colors.white,),
            Expanded(child: Text(text, style: TextStyle(fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white),))
          ]
      ),
    );
   }