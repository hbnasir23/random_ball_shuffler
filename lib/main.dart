import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ball Shuffle Project',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        primaryColor: Colors.lightBlue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String ball1Image = "assets/image_1.png";

  void rollBall() {
    int randomNumber = Random().nextInt(5) + 1;
    setState(() {
      ball1Image = "assets/image_$randomNumber.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          "Ball Shuffle Project",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 41,
          ),
        ),

      ),
      backgroundColor: Colors.lightBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                ball1Image,
                height: 250,
                width: 250,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: rollBall,
            child: Text(
              "Ball Shuffle",
              style: TextStyle(fontSize:20,color: Colors.black87),
            ),
          )
        ],
      ),
    );
  }
}
