import 'package:demo_flutter/body/widget/InputCards.dart';
import 'package:demo_flutter/data/play_case.dart';
import 'package:flutter/cupertino.dart';

class UserInput extends StatefulWidget {
  const UserInput({required this.isDone, super.key});

  final bool isDone;

  @override
  State<UserInput> createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {

  late bool _isdone;

  @override
  void initState() {
    _isdone = widget.isDone;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if(_isdone){
      return Placeholder();
    }

    return const InputCards(callback:testcall);
  }
}

void testcall(){
  print('hello!!!!');
}