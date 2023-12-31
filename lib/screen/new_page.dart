import 'package:flutter/material.dart';

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
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: Text('Go To Page1'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewPage()));
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
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: Text('Go To Page2'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NewPage2()));
              },
            ),
            TextButton(
              child: Text('Go To Home'),
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
            ),
          ],
        ),
      ),
    );
  }
}
