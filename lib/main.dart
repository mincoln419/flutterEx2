import 'package:demo_flutter/screen/new_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(
    MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo)
      ),
      routerConfig: GoRouter(
        routes: [
          GoRoute(path: '/', name: 'home', builder: (context, _) => HomeWidget()),
          GoRoute(path: '/new1', name: 'page1', builder: (context, _) => NewPage()),
          GoRoute(path: '/new2', name: 'page2', builder: (context, _) => NewPage2()),
        ]
      ),
    )
  );
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: TextButton(
          child: Text('Go Page'),
          onPressed: () {
            context.pushNamed('page1');
          },
        ),
      ),
    );
  }
}
