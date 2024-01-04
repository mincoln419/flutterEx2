import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'HomeScreen.dart';
import 'SearchScreen.dart';

class InstagramBody extends StatelessWidget {
  const InstagramBody({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    if(index == 0){
      return HomeScreen();
    }
    return SearchScreen();
  }
}
