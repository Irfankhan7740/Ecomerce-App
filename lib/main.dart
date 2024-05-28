import 'package:flutter/material.dart';
import 'package:newfire/BottomBar.dart';
import 'package:newfire/DateFormat.dart';

import 'package:newfire/HOME%20PAGE.dart';
import 'package:newfire/ProductDetailScreen.dart';
import 'package:newfire/ProductScreen.dart';
import 'package:newfire/newScreen.dart';

import 'ApiServievce/viewScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
           // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: const BlurBottomBar(),
      // home: const DateFormate(title: "")
      //  home: ProductDetailScreen(),
       home: ViewScreen(),
   );
  }
}

