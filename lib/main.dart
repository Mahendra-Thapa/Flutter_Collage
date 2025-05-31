import 'package:flutter/material.dart';
import 'package:flutter_practice/core/widgets/StoryCard.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.all(4),
            child: Row(
              children: [
                StoryCard(color: Colors.green),
                StoryCard(color: Colors.red),
                StoryCard(color: Color.fromARGB(255, 13, 161, 235)),
                StoryCard(color: Color.fromARGB(255, 232, 11, 203)),
                StoryCard(color: Color.fromARGB(255, 139, 96, 96)),
                StoryCard(color: Color.fromARGB(255, 136, 139, 96)),
              ],
            ),
          ),
        ));
  }
}
