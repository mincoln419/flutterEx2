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
    return TestWidget();
  }
}

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Count: $value',
            style: const TextStyle(fontSize: 40),
          ),
        ),
        TestButton(callback2: addSpecificCounter)
      ],
    );
  }

  void addCounter(){
    setState(() {
      value++;
    });
  }

  void addSpecificCounter(int specific){
    setState(() {
      value += specific;
    });
  }
}

class TestButton extends StatelessWidget {
  const TestButton({required this.callback2, super.key});

//  final VoidCallback callback;

  final Function(int) callback2;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        width: double.infinity,
        child: InkWell(
          onTap: () => callback2(4),
          onDoubleTap: () => callback2(40),
          onLongPress: () => callback2(400),
          child: Center(
              child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(border: Border.all()),
            child: const Text(
              'Up Count',
              style: TextStyle(fontSize: 24),
            ),
          )),
        ));
  }
}
