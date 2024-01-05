import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        children: List.generate(
            100, (index) => UserStory(username: 'User Name $index')),
      ),
    );
  }
}

class UserStory extends StatelessWidget {
  final String username;

  const UserStory({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            decoration: BoxDecoration(
                color: Colors.blue.shade300,
                borderRadius: BorderRadius.circular(40)),
          ),
          Text(
            username,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}

class FeedData extends StatelessWidget {
  const FeedData(
      {super.key,
      required this.username,
      required this.likeCount,
      required this.content});

  final String username;
  final int likeCount;
  final String content;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

final feedDataList = [
  const FeedData(username: "Jackson", likeCount: 10, content: "젝둘다루다랃다"),
  const FeedData(username: "Micheal", likeCount: 20, content: "contents11"),
  const FeedData(username: "James", likeCount: 34, content: "contents11"),
  const FeedData(username: "Brown", likeCount: 23, content: "contents11"),
  const FeedData(username: "White", likeCount: 15, content: "contents11"),
  const FeedData(username: "Cherry", likeCount: 13, content: "contents11"),
  const FeedData(username: "Kim", likeCount: 12, content: "contents11"),
  const FeedData(username: "Becky", likeCount: 16, content: "contents11"),
  const FeedData(username: "Queen", likeCount: 19, content: "contents11"),
];

class FeedList extends StatelessWidget {
  const FeedList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: new NeverScrollableScrollPhysics(),
        itemCount: feedDataList.length,
        itemBuilder: (context, index) =>
            FeedItem(feedData: feedDataList[index]));
  }
}

class FeedItem extends StatelessWidget {
  const FeedItem({super.key, required this.feedData});

  final FeedData feedData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade300
                    ),
                  ),
                  SizedBox(width: 8,),
                  Text(feedData.username, style: TextStyle(fontSize: 28),)
                ],
              ),
              Icon(Icons.more_vert)
            ],
          ),
        ),
        const SizedBox(height: 8,),
        Container(
          width: double.infinity,
          height: 300,
          color: Colors.red.shade300
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(icon: Icon(Icons.favorite), onPressed: (){},),
                  IconButton(icon: Icon(CupertinoIcons.chat_bubble), onPressed: (){},),
                  IconButton(icon: Icon(CupertinoIcons.paperplane), onPressed: (){},),
                ],
              ),
              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bookmark))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text('좋아요 ${feedData.likeCount}', style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 24),
          child: RichText(text: TextSpan(
            children: [
              TextSpan(text: feedData.username, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
              TextSpan(text: feedData.content, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))
            ]
          )),
        ),
        const SizedBox(height: 20,)
        
      ],
    );
  }
}
