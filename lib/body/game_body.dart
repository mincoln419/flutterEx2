import 'dart:math';

import 'package:demo_flutter/body/user_input.dart';
import 'package:demo_flutter/data/play_case.dart';
import 'package:flutter/cupertino.dart';

import 'cpu_input.dart';
import 'game_result.dart';

class GameBody extends StatefulWidget {
  const GameBody({super.key});

  @override
  State<GameBody> createState() => _GameBodyState();
}

class _GameBodyState extends State<GameBody> {

  late bool isDone;
  PlayCase? _userInput;
  late PlayCase _cpuInput;


  @override
  void initState() {
    isDone = false;
    super.initState();
    setCputInput();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: CPUInput(isDone: isDone, cpuInput: _cpuInput)),
        Expanded(child: GameResult(isDone: isDone, result: getResult(), callback: reset,)),
        Expanded(child: UserInput(isDone: isDone, callback: setPlayCase, userInput: _userInput,)),

      ],
    );
  }

  void setPlayCase(PlayCase userInput){
    setState(() {
      isDone = true;
      _userInput = userInput;
      print('user input : $_userInput');
      print('game finish');
    });
  }

  void setCputInput() {
    final random = Random();
    _cpuInput = PlayCase.values[random.nextInt(3)];
  }
  ResultEnum? getResult() {
    if(_userInput == null){
      return null;
    }
    switch(_userInput){
      case PlayCase.rock:
        switch(_cpuInput){
          case PlayCase.rock:
            return ResultEnum.draw;
          case PlayCase.paper:
            return ResultEnum.cpuWin;
          case PlayCase.scissors:
            return ResultEnum.playerWin;
        }
      case PlayCase.paper:
        switch(_cpuInput){
          case PlayCase.rock:
            return ResultEnum.playerWin;
          case PlayCase.paper:
            return ResultEnum.draw;
          case PlayCase.scissors:
            return ResultEnum.cpuWin;
        }
      case PlayCase.scissors:
        switch(_cpuInput){
          case PlayCase.rock:
            return ResultEnum.cpuWin;
          case PlayCase.paper:
            return ResultEnum.playerWin;
          case PlayCase.scissors:
            return ResultEnum.draw;
        }
      default:
        return null;
    }

  return null;
  }

  void reset() {
    setState(() {
      isDone = false;
      setCputInput();
    });
  }
}


