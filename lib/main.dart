import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Study to Container'),
      ),
      body: CustomContainer(),
    ),
  ));
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 500,
          width: 500,
          color: Colors.black,
        ),
        Container(
          height: 400,
          width: 400,
          color: Colors.yellow,
        ),
        Align(
          alignment: Alignment(0.1, -0.1),
          child: Container(
            height: 300,
            width: 300,
            color: Colors.white,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 10,
          child: Container(
            height: 200,
            width: 200,
            color: Colors.green,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(150)
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(140)
            ),
          ),
        ),
        Container(color: Colors.red, child: Text("hello world")),
      ],
    );
  }
}
