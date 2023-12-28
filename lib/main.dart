import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Widget을 좌우로 배치하기'),
      ),
      body: Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          ///height: double.infinity,
          ///width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                child: Text('Container3'),
              ),
            ],
          ),
        ),
        Container(
          width: 300,
          height: 120,
          color: Colors.grey,
          child: Text('Container4'),
        ),
      ],
    );
  }
}
