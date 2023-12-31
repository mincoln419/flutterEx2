import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Study to Container'),
      ),
      body: const CustomContainer(),
    ),
  ));
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: RandomWords(),
    );
  }
}

class RandomWords extends StatelessWidget {
  const RandomWords({super.key});

  @override
  Widget build(BuildContext context) {
    final wordList = generateWordPairs().take(5).toList();
    final widgets = wordList
        .map((word) => Text(
              word.asCamelCase,
              style: const TextStyle(fontSize: 40),
            ))
        .toList();
    return Column(
      children: widgets,
    );
  }
}
