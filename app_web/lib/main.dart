// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var myAppBar = AppBar(
        backgroundColor: Color(0xA9D288),
        foregroundColor: Colors.green,
        title: Text("Locotigo"));

    var myBNB = BottomNavigationBar(
        backgroundColor: Color(0xA9D288),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "",
          )
        ]);
    
    return MaterialApp(
      home: Scaffold(
        appBar: myAppBar,
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor:Color(0xA9D288),
          ),
          child:myBNB
        ),
      ),
    );
  }
}
