import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/play_case.dart';

class InputCards extends StatelessWidget {
  final Function(PlayCase)? callback;
  InputCards({
    this.callback, super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _getInputs(),
    );
  }
  List<Widget> _getInputs() {
    return PlayCase.values
        .map((type) => Expanded(child: InkWell(
        onTap: () => callback?.call(type),
        child: InputContent(type: type))))
        .toList();
  }
}

class InputContent extends StatelessWidget {
  final PlayCase type;

  const InputContent({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Colors.indigo, width: 8),
        ),
        child: Image.asset(type.path));
  }
}
