import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;

  const UserPosts({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //profile photo
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),

                  //name
                  const Text('\t\t '),
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Icon(Icons.menu),
            ],
          ),
        ),
        Container(
          height: 300,
          color: Colors.grey[300],
          // key: ValueKey<String>(name),
        ),
        //below the post -> button and comment
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Icon(Icons.chat_bubble_rounded),
                  ),
                  Icon(Icons.send_rounded),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),
        //comments
        Padding(
          padding: const EdgeInsets.only(right: 16.0, left: 10),
          child: Row(children: [
            const Text('Liked by '),
            Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
            const Text(' and '),
            const Text(' others',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ]),
        ),
        //captions
        Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8),
            child: RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(
                    text:
                        ' World ain\'t that bright to give a shit on everyone\'s face!!!',
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
