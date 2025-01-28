import 'package:flutter/material.dart';

void main() {
  runApp(MySecondApp());
}

class MySecondApp extends StatelessWidget {
  const MySecondApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : BirthdayCard(),
    );
  }
}

class BirthdayCard extends StatelessWidget {
  const BirthdayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('CARD'),
      ),
      body: Center(
        child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text("Happy Birthday",style: TextStyle(fontSize: 50),),
          ),
          SizedBox(height: 300,),
          Container(
            alignment: Alignment.center,
            child: Text("To my friend",style: TextStyle(fontSize: 30),),
          ),
          SizedBox(height: 400,),
          ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).
                showSnackBar(SnackBar(content: Text("Happy birthday!")));
              }, child: Text('Surprise')),
        ],
        ),
      ),
    );
  }
}
