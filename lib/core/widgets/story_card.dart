import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_practice/core/widgets/color_change.dart';
import 'package:flutter_practice/dataModel/story.dart';

class StoryCard extends StatelessWidget {
  final Story story;
  const StoryCard({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ColorChange(),
          ),
        );
      },
      child: SizedBox(
          width: MediaQuery.of(context).size.width / 4,
          child: Stack(
            children: [
              // story content
              Container(
                height: 170,
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(story.contentImage),
                      fit: BoxFit.fill,
                      onError: (exception, stackTrace) {},
                    )),
                // child: Image.network(
                //   story.contentImage,
                //   fit: BoxFit.fill,
                //   errorBuilder: (context, error, stackTrace) {
                //     return const Icon(Icons.error);
                //   },
                // ),
              ),

              // profile---------------------
              Positioned(
                top: 10,
                left: 10,
                child: ClipOval(
                  child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: Image(
                        image: NetworkImage(story.profileImage),
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return ClipOval(
                            child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 2),
                                    shape: BoxShape.circle),
                                child: const Icon(
                                  Icons.person,
                                  size: 34,
                                  color: Colors.grey,
                                )),
                          );
                        },
                      )),
                ),
              ),
              Positioned(
                left: 10,
                bottom: 10,
                child: Container(
                  padding: const EdgeInsets.only(right: 10),
                  width: MediaQuery.of(context).size.width / 4,
                  child: Text(
                    story.name,
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
          )),
    );
  }
}
