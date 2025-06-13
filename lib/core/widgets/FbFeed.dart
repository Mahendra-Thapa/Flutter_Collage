import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Fbfeed extends StatelessWidget {
  const Fbfeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 12.0),
      margin: const EdgeInsets.only(bottom: 12.0),
      // color: Colors.grey[200],
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: const EdgeInsets.all(10.0),
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
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2TgOv9CMmsUzYKCcLGWPvqcpUk6HXp2mnww&s")),
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
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mahedra Thapa",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Text("32m."),
                            Icon(
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
          const Padding(
            padding: EdgeInsets.only(right: 10.0, left: 10.0),
            child: Column(
              children: [
                Text("This is my first application by using the flutter"),
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
                child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjPCZjLeGG7aWW10AHSBp6ybm8elMmfll7WNvc6SnUmaYfMUCgYpI5PLGQn2Uu-iREkg0&usqp=CAU"),
              ),
              SizedBox(
                height: 200,
                width: MediaQuery.sizeOf(context).width / 2,
                child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjPCZjLeGG7aWW10AHSBp6ybm8elMmfll7WNvc6SnUmaYfMUCgYpI5PLGQn2Uu-iREkg0&usqp=CAU"),
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
