import 'package:flutter/cupertino.dart';

class CPUInput extends StatefulWidget {
  const CPUInput({required this.isDone, super.key});

  final bool isDone;

  @override
  State<CPUInput> createState() => _CPUInputState();
}

class _CPUInputState extends State<CPUInput> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
