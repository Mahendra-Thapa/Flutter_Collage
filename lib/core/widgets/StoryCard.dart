import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final Color color;
  const StoryCard({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      height: 150,
      color: color,
      margin: const EdgeInsets.all(4),
    ));
  }
}
