import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Widget을 상하로 배치하기'),
      ),
      body: Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
///        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 80,
            color: Colors.red,
            child: Text('Cont ainer1'),
          ),
          Container(
            width: 100,
            height: 80,
            color: Colors.blue,
            child: Text('Container2'),
          ),
          Container(
            width: 100,
            height: 80,
            color: Colors.green,
            child: Text('Container2'),
          ),
        ],
      ),
    );
  }
}
