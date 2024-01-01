import 'package:demo_flutter/body/widget/InputCards.dart';
import 'package:demo_flutter/data/play_case.dart';
import 'package:flutter/cupertino.dart';

class UserInput extends StatelessWidget {
  const UserInput({super.key, required this.callback, required this.isDone});

  final Function(PlayCase) callback;
  final bool isDone;


  @override
  Widget build(BuildContext context) {
    if(isDone){
      return Placeholder();
    }

    return InputCards(callback: callback,);
  }
}



