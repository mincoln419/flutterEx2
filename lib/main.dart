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
    return Container(
      color: Colors.blue,
      width: 500,
      height: 500,
      child: Center(
        child: Container(
          constraints: BoxConstraints.loose(Size(200, 200)),
          color: Colors.red,
          width: 100,
          height: 100,
          padding: EdgeInsets.all(10),
          child: Container(
            color: Colors.grey,
            width: 20,
            height: 20,
            margin: EdgeInsets.all(20),

          ),
        ),
      ),


    );
  }
}
