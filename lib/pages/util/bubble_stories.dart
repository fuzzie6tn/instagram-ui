import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  // const BubbleStories({Key? key}) : super(key: key);

  final String text;
  final Color backgroundColor;
  final Key? key;
  const BubbleStories(
      {required this.text, this.backgroundColor = Colors.grey, this.key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[400],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(text),
        ],
      ),
    );
  }
}
