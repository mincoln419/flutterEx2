import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'body.dart';

void main() {
  runApp(MaterialApp.router(
    theme: customTheme,
    routerConfig: GoRouter(routes: [
      GoRoute(path: '/', name: 'home', builder: (context, _) => HomeWidget()),
    ]),
  ));
}

final customTheme = ThemeData(
    useMaterial3: true,
    textTheme: const TextTheme(
        bodyMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 40,
    )),
    colorScheme: const ColorScheme.light(
        primary: Colors.white, secondary: Colors.black),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    showSelectedLabels: false,
    showUnselectedLabels: false,
    selectedItemColor: Colors.black

  )
);

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

  late int index;

  @override
  void initState() {
    index = 0;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram', style: GoogleFonts.lobsterTwo(fontSize: 32)),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_outline),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(CupertinoIcons.paperplane),
            onPressed: () {},
          )
        ],
      ),
      body: InstagramBody(index: index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (newIndex) => setState(() {
          index = newIndex;
          print("tab index : $index");
        }),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 28), label: 'home',),
          BottomNavigationBarItem(icon: Icon(Icons.search, size: 28), label: 'search'),
        ],
      ),
    );
  }
}


