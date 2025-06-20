import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_practice/core/widgets/CreateStoryCard.dart';
import 'package:flutter_practice/core/widgets/FbFeed.dart';
import 'package:flutter_practice/core/widgets/story_card.dart';
import 'package:flutter_practice/dataModel/feed.dart';
import 'package:flutter_practice/dataModel/story.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Feed> _feed = [];
  List<Story> _story = [];

  @override
  void initState() {
    onloadData();
    super.initState();
  }

  onloadData() async {
    // for story
    final String responseStroy = await rootBundle.loadString('Story.json');
    final List<dynamic> storyData = json.decode(responseStroy);
    _story = storyData.map((json) => Story.fromJson(json)).toList();

    // for feed
    final String response = await rootBundle.loadString('Feed.json');
    final List<dynamic> data = json.decode(response);
    _feed = data.map((json) => Feed.fromJson(json)).toList();
    setState(() {});
    print("It is News Feed");
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Row(
                  children: [
                    const CreateStoryCard(),
                    // Story card is here available
                    ..._story.map(
                      (s) => StoryCard(story: s),
                    ),
                  ],
                ),
              ),
            ),

            // News Feed are here
            ..._feed
                .map(
                  (s) => Fbfeed(feed: s),
                )
                .toList(),
          ],
        ));
  }
}
