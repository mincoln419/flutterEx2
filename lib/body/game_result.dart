import 'package:demo_flutter/data/play_case.dart';
import 'package:flutter/cupertino.dart';

class GameResult extends StatelessWidget {
  final bool isDone;

  final ResultEnum? result;

  const GameResult({required this.isDone, this.result, super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return const Placeholder();
    }
    return const Center(
      child: Text(
        '가위, 바위, 보 중 하나를 선택해주세요.',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
