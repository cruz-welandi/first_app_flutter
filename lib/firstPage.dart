import 'package:flutter/material.dart';

class newPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ma nouvelle page'),
      ),
      body: Center(
        child: Text('Je suis la nouvelle page'),
        ),
    );
  }
}