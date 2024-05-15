import 'package:flutter/material.dart';

class ReelsGrid extends StatelessWidget {
  const ReelsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 15,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(2.0),
          child: Container(
            height: double.infinity,
            color: Colors.grey,
          ),
        );
      },
    );
  }
}
