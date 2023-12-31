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
    return Column(children: [
      ExampleStateLess(),
      ExampleStateful(index : 3),
    ]);
  }
}

class ExampleStateLess extends StatelessWidget {
  const ExampleStateLess({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.red,
      ),
    );
  }
}

class ExampleStateful extends StatefulWidget {
  const ExampleStateful({required this.index, super.key});
  final int index;
  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}

class _ExampleStatefulState extends State<ExampleStateful> {

  late TextEditingController textEditingController;
  late int _index;
  @override
  void initState() {
    super.initState();
    textEditingController= TextEditingController();
    _index = widget.index;
  }

  @override
  void dispose() {

    textEditingController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (_index == 5) {
              _index = 0;
              return;
            }
            _index++;
            print('$_index');
          });
        },
        child: Container(
            color: Colors.blue.withOpacity(_index/5),
            child: Center(
                child: Text(
              '$_index',
              style: TextStyle(fontSize: 40),
            ))),
      ),
    );
  }
}
