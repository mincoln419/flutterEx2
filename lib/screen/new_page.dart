import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPage2 extends StatelessWidget {
  const NewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome New Page2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text('Go Back'),
              onPressed: () => context.pop(),
            ),
            TextButton(
              child: Text('Go To Page1'),
              onPressed: () {
                context.pushNamed('page1');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              child: Text('Go To Back'),
              onPressed: () {
                context.pop();
              },
            ),
            TextButton(
              child: Text('Go To Page2'),
              onPressed: () {
                context.pushNamed('page2');
              },
            ),
            TextButton(
              child: Text('Go To Home'),
              onPressed: () {
                context.goNamed('home');
              },
            ),
          ],
        ),
      ),
    );
  }
}
