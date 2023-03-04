import 'package:flutter/material.dart';

class ParametreScreen extends StatelessWidget {
  const ParametreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            color: Colors.red,
          )),
          Expanded(
              child: Container(
            color: Colors.green,
          )),
          Expanded(
              child: Container(
            color: Colors.white,
          ))
        ],
      ),
    );
  }
}
