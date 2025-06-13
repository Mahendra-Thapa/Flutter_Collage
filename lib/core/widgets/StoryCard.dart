import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StoryCard extends StatelessWidget {
  final Color color;
  final String text;
  const StoryCard({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 4,
        child: Stack(
          children: [
            Container(
              height: 170,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: color),
              margin: const EdgeInsets.all(4),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
              ),
            ),
            Positioned(
              // width: MediaQuery.of(context).size.width / 5,
              left: 10,
              bottom: 10,
              child: Container(
                padding: const EdgeInsets.only(right: 10),
                width: MediaQuery.of(context).size.width / 4,
                child: Text(
                  text,
                  maxLines: 2,
                  style: const TextStyle(
                      color: Colors.white,
                      fontFamily: AutofillHints.addressState,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                  softWrap: true,
                ),
              ),
            )
          ],
        ));
  }
}
