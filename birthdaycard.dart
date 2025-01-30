import 'package:flutter/material.dart';

void main() {
  runApp(MySecondApp());
}

class MySecondApp extends StatelessWidget {
  const MySecondApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BirthdayCard(),
    );
  }
}

class BirthdayCard extends StatelessWidget {
  const BirthdayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('CARD'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/birthday.jpg'), // Change the asset to your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text("Happy Birthday", style: TextStyle(fontSize: 50, color: Colors.purpleAccent)),
              ),
              SizedBox(height: 300,),
              Container(
                alignment: Alignment.center,
                child: Text("To my friend", style: TextStyle(fontSize: 30, color: Colors.purpleAccent)),
              ),
              SizedBox(height: 250,),
              ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Happy birthday!")));
                  },
                  child: Text('Surprise')
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: Text("Party", style: TextStyle(fontSize: 20, color: Colors.purpleAccent)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
