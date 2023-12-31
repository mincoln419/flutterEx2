import 'package:demo_flutter/body/user_input.dart';
import 'package:flutter/cupertino.dart';

import 'cpu_input.dart';
import 'game_result.dart';

class GameBody extends StatefulWidget {
  const GameBody({super.key});

  @override
  State<GameBody> createState() => _GameBodyState();
}

class _GameBodyState extends State<GameBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: CPUInput()),
        Expanded(child: GameResult()),
        Expanded(child: UserInput()),

      ],
    );
  }
}
