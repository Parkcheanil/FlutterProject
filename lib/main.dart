import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: GestureDetector(
            onTap: () {
              print("click");
            },
            child: Row(
              children: [
                Text('아라동',
                  style: TextStyle(color: Colors.black),
                ),
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
          elevation: 1,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.tune)),
            IconButton(onPressed: () {}, icon: Icon(Icons.tune)),
          ],
        ),
        body: Container(
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: Image.asset('assets/images/dog.jpg', width: 100, height: 100,),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(),
      )
    );
  }
}
