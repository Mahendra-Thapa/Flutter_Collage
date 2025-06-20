import 'package:flutter/material.dart';
import 'package:flutter_practice/dataModel/feed.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Fbfeed extends StatelessWidget {
  Feed feed;
  Fbfeed({super.key, required this.feed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 12.0),
      margin: const EdgeInsets.only(bottom: 12.0),
      // color: Colors.grey[200],
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(
          border: Border(top: BorderSide(width: 2, color: Colors.grey))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipOval(
                      child: Image(
                          height: 40,
                          width: 40,
                          image: NetworkImage(feed.profileImage)),
                    ),
                    // Container(
                    //   height: 40,
                    //   width: 40,
                    //   decoration: const BoxDecoration(
                    //       shape: BoxShape.circle, color: Colors.blue),
                    // ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          feed.name,
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Text(feed.time),
                            const Icon(
                              Icons.language,
                              size: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.more_horiz),
                        SizedBox(
                          width: 6,
                        ),
                        Icon(
                          Icons.close,
                          size: 20,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0, left: 10.0),
            child: Column(
              children: [
                Text(feed.description),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                height: 200,
                width: MediaQuery.sizeOf(context).width / 2,
                child: Image.network(feed.feedImage1),
              ),
              SizedBox(
                height: 200,
                width: MediaQuery.sizeOf(context).width / 2,
                child: Image.network(feed.feedImage2),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.recommend_rounded,
                      size: 20,
                      color: Colors.indigo,
                    ),
                    Text("12k"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("100 comments"),
                    SizedBox(
                      width: 12,
                    ),
                    Text("100 shears"),
                    SizedBox(
                      width: 12,
                    ),
                    Text("10k views"),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12, left: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.thumb_up_outlined,
                      size: 20,
                    ),
                    SizedBox(width: 8),
                    Text("Like"),
                  ],
                ),
                Row(
                  children: [
                    Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(3.1416),
                      child: const Icon(
                        FontAwesomeIcons.comment,
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text("Comment"),
                  ],
                ),
                const Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.facebookMessenger,
                      size: 20,
                    ),
                    SizedBox(width: 8),
                    Text("Send"),
                  ],
                ),
                const Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.share,
                      size: 20,
                    ),
                    SizedBox(width: 8),
                    Text("Share"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
