import 'package:flutter/material.dart';

import 'body/game_body.dart';

void main() {
  runApp(const RPSWidget());
}

class RPSWidget extends StatelessWidget {
  const RPSWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('가위 바위 보'),
        ),
        body: const GameBody(),
      ),
    );
  }
}



