import 'package:flutter/material.dart';

class CreateStoryCard extends StatelessWidget {
  const CreateStoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4,
      child: Stack(
        children: [
          Container(
            height: 170,
            margin: const EdgeInsets.only(right: 4, left: 4),
            decoration: BoxDecoration(
                // color: Colors.grey[400],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: Colors.grey.shade300)),
          ),
          const Positioned(
            right: 4,
            top: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image(
                width: 118,
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkM2OJy9rNds8J8DrtvjImMk-krlUMtDd0hfjdEwQORF9HKPxxSNClCYBCRxMi4dZS-0c&usqp=CAU"),
              ),
            ),
          ),
          Positioned(
            top: 75,
            left: 45,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white),
              child: const Icon(
                Icons.add_circle,
                size: 40,
                color: Colors.indigo,
              ),
            ),
          ),
          const Positioned(
            bottom: 10,
            left: 24,
            child: Text(
              "Create Story",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
