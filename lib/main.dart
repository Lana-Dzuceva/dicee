import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Center(child: Text("Dicee")),
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
          child: TextButton(
            child: Image.asset('images/dice2.png'),
            onPressed: () {
              print("left button was pressed");
            },
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              print("right button was clicked");
            },
            child: Image.asset('images/dice1.png'),
          ),
        ),
      ]),
    );
  }
}
