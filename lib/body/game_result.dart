import 'package:demo_flutter/data/play_case.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameResult extends StatelessWidget {
  final bool isDone;

  final ResultEnum? result;

  final VoidCallback callback;

  const GameResult({required this.isDone, this.result, required this.callback, super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
                      result!.displayString,
                      style: const TextStyle(fontSize: 40),
                    )),
          SizedBox(height: 8),
          TextButton(onPressed: () => callback.call(), child: Text('다시 하기', style: TextStyle(fontWeight:FontWeight.bold, color: Colors.indigo, fontSize: 24),),)
        ],
      );
    }
    return const Center(
      child: Text(
        '가위, 바위, 보 중 하나를 선택해주세요.',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
