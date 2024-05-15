import 'package:flutter/material.dart';

class StoryBubbles extends StatelessWidget {
  const StoryBubbles({super.key, required this.name});

  final String name;

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
                color: Colors.grey[400]
            ),
          ),
          SizedBox(height: 5,),
          Text(name)
        ],
      ),
    );
  }
}
