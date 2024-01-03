import 'package:demo_flutter/body/widget/InputCards.dart';
import 'package:demo_flutter/data/play_case.dart';
import 'package:flutter/cupertino.dart';

class UserInput extends StatelessWidget {
  const UserInput({super.key, required this.callback, this.userInput, required this.isDone});

  final Function(PlayCase) callback;
  final bool isDone;
  final PlayCase? userInput;


  @override
  Widget build(BuildContext context) {
    if(isDone){
      return Row(
        children: [
          Expanded(child: SizedBox.shrink()),
          Expanded(child: InputContent(child: Image.asset(userInput!.path))),
          Expanded(child: SizedBox.shrink()),
        ],
      );
    }

    return InputCards(callback: callback,);
  }
}



