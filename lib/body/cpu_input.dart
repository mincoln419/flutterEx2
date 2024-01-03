import 'package:demo_flutter/body/widget/InputCards.dart';
import 'package:demo_flutter/data/play_case.dart';
import 'package:flutter/cupertino.dart';

class CPUInput extends StatelessWidget {
  const CPUInput({required this.isDone, required this.cpuInput, super.key});

  final bool isDone;
  final PlayCase cpuInput;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: SizedBox.shrink()),
          Expanded(child: InputContent(child: getCpuInput())),
          Expanded(child: SizedBox.shrink()),
        ],
      ),
    );
  }

  Widget getCpuInput() {
    if (isDone) {
      return Image.asset(cpuInput.path);
    }

    return const SizedBox(
        width: 60,
        height: 60,
        child: Center(
          child: Text(
            '?',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }
}
