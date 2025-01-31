import 'package:flutter/material.dart';

void main() {
  runApp(MySecondProject());
}

class MySecondProject extends StatelessWidget {
  const MySecondProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCounterDemo(),
    );
  }
}

class MyCounterDemo extends StatefulWidget {
  const MyCounterDemo({super.key});

  //This method will capture the present state of the engine/app
  @override
  State<MyCounterDemo> createState() => _MyCounterDemoState();
}

//This class will react for the user action in which you see there is
//method to build in the context. You have to use the code in the setState
//method for all user action
class _MyCounterDemoState extends State<MyCounterDemo> {

  int _count = 0; //create a private variable

  //write the methods to inc and dec the count variable

  void increment() {
    //all the actions must be in setState method
    setState(() {
      _count++;
    });
  }

  void decrement() {
    //all the actions must be in setState method
    setState(() {
      if (_count > 0) {
        _count--;  // Decrement the count only if it's greater than 0
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("counter"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: increment,
                child: Text("+")
            ),
              SizedBox(height: 10,),
              Text('$_count'),  // Display the value of _count dynamically.
              SizedBox(height: 10,),
            ElevatedButton(
                onPressed: decrement,
                child: Text("-"),
            ),
          ],
        ),
      ),
    );
  }
}

