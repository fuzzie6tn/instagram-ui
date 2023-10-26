import 'package:flutter/material.dart';

class AddToStory extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Key? key;

  const AddToStory(
      {required this.text, this.backgroundColor = Colors.grey, this.key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: backgroundColor, // Use the provided background color
                ),
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.add,
                    color: Colors.white, // You can adjust the icon color
                    size: 20, // You can adjust the icon size
                  ),
                ),
              ),
            ],
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
