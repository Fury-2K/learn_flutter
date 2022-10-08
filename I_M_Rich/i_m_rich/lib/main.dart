import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Center(
        child: Scaffold(
          appBar: AppBar(
            title: Text("I am Rich Bitch"),
            backgroundColor: Colors.cyan[500],
           ),
          body: const Center(
            // child: Image(
              // image: AssetImage('images/diamond.png')
            // ),
            child: Image(
              image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/7/73/Ruby_logo.svg')
            ),
          ),
        ),
      )
    )
  );
}