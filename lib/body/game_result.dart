import 'package:flutter/cupertino.dart';

class GameResult extends StatefulWidget {
  const GameResult({required this.isDone, super.key});

  final bool isDone;

  @override
  State<GameResult> createState() => _GameResultState();
}

class _GameResultState extends State<GameResult> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
