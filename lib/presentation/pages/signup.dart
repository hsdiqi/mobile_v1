import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup Page'),
      ),
      body: Center(
        child: Text(
          'Signup Page',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
