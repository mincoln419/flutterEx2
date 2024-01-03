import 'package:demo_flutter/screen/new_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MaterialApp.router(
    theme: customTheme,
    routerConfig: GoRouter(routes: [
      GoRoute(path: '/', name: 'home', builder: (context, _) => HomeWidget()),
      GoRoute(path: '/new1', name: 'page1', builder: (context, _) => NewPage()),
      GoRoute(
          path: '/new2', name: 'page2', builder: (context, _) => NewPage2()),
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
    colorScheme:
        const ColorScheme.light(primary: Colors.white, secondary: Colors.black));

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
