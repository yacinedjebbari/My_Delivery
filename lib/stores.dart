import 'package:flutter/material.dart';

class MyStore extends StatefulWidget {
  const MyStore({Key? key}) : super(key: key);

  @override
  State<MyStore> createState() => _MyStoreState();
}

class _MyStoreState extends State<MyStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Store 01", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
        backgroundColor: Colors.deepOrange,),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [         
          //Container(
            Expanded(
            child: Column(
              children: [
                Image.asset ("Images/image1.png"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [ 
                    Expanded (child: Column(children: [Text("Store 01 ")])),                
                    Icon(Icons.favorite, color: Colors.red,),
                    Text("55"),                   
                  ],
                ),
                
              ],
            ),
            //), 
        ),
        ],
      )
    );
  }
}