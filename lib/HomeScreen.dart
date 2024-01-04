import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(

        children: [
          const StoryArea(),
          FeedList(),
          
        ],
      ),
    );
  }
}

class StoryArea extends StatelessWidget {
  const StoryArea({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            children: [
              Container(
                child: Image(Image.asset(""))),
              )
            ],
          ),

        ],
      ),
    );
  }
}


class FeedList extends StatelessWidget {
  const FeedList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

