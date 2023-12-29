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
    return SingleChildScrollView(
      child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.grey,
                  width: double.infinity,
                  height: 100,
                  margin: EdgeInsets.symmetric(vertical: 8),
      
                ),
                Container(
                  color: Colors.grey,
                  width: double.infinity,
                  height: 100,
                  margin: EdgeInsets.symmetric(vertical: 8),
      
                ),
                Container(
                  color: Colors.grey,
                  width: double.infinity,
                  height: 100,
                  margin: EdgeInsets.symmetric(vertical: 8),
      
                ),
                Container(
                  color: Colors.grey,
                  width: double.infinity,
                  height: 100,
                  margin: EdgeInsets.symmetric(vertical: 8),
      
                ),
                Container(
                  color: Colors.grey,
                  width: double.infinity,
                  height: 100,
                  margin: EdgeInsets.symmetric(vertical: 8),
      
                ),
                Container(
                  color: Colors.grey,
                  width: double.infinity,
                  height: 100,
                  margin: EdgeInsets.symmetric(vertical: 8),
      
                ),
                Container(
                  color: Colors.grey,
                  width: double.infinity,
                  height: 100,
                  margin: EdgeInsets.symmetric(vertical: 8),
      
                ),
                Container(
                  color: Colors.grey,
                  width: double.infinity,
                  height: 100,
                  margin: EdgeInsets.symmetric(vertical: 8),

                ),
              ]
      ),
    );
  }
}
