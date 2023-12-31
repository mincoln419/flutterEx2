import 'package:demo_flutter/screen/new_page.dart';
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
    return Center(
      child: TextButton(
        child: Text('Go Page'),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const NewPage();
          },),);
        },
      ),
    );
  }
}
