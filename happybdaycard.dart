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
            image: AssetImage('assets/birthday.jpg'),
            fit: BoxFit.cover,  // This will cover the entire background
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Text("Happy Birthday", style: TextStyle(fontSize: 50, color: Colors.purple)),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Text("To my friend", style: TextStyle(fontSize: 30, color: Colors.purpleAccent)),
                ),
              ),
              Spacer(),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Happy birthday!")));
                  },
                  child: Text('Surprise'),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text("Party", style: TextStyle(fontSize: 20, color: Colors.purpleAccent)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
