import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomeWidget()));
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

  late int index;

  @override
  void initState() {
    this.index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('화면이동하기'),
      ),
      body: homeBody(),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
      ],
      currentIndex: index,
        onTap: (newValue) => setState(() => index = newValue),
      ),
    );
  }

  Widget homeBody(){

    switch(index){
      case 1:
        return const Center(child: Icon(Icons.search),);
      case 2:
        return const Center(child: Icon(Icons.person),);
      case 0:
      default:
        return const Center(child: Icon(Icons.home),);
    }

    return Placeholder();
  }
}



