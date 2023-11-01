import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: Text(
          'New Page',
          style: TextStyle(
            color: Colors.black, // Set the text color
            fontSize: 20, // Set the text size
          ),
        ),
      ),
      body: Center(
        child: Text('This is a new page!'),
      ),
    );
  }
}
