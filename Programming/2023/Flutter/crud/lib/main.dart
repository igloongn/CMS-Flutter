import 'package:crud/screens/About.dart';
import 'package:crud/screens/HomeScreen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) => runApp(MaterialApp(
      title: 'Mufasa First',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomeScreen(title: "HomePage"),
        '/about': (context) => const About(title: 'About Page'),
      },
      theme: ThemeData(
        // primaryColor: Colors.yellow,
        primarySwatch: Colors.red,
      ),

      // home: HomeScreen(),
    ));
