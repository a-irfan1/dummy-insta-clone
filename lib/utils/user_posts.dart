import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserPost extends StatelessWidget {
  const UserPost({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
              const Icon(Icons.menu),
            ],
          ),
        ),
        Container(
          height: 300,
          color: Colors.grey,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 12.0, right: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(CupertinoIcons.heart_fill),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(Icons.comment_bank_rounded),
                  ),
                  Icon(Icons.share)
                ],
              ),
              Icon(Icons.bookmark)
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('Liked by '),
              Text(
                'developer',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(' and '),
              Text(
                'others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.0, top: 8.0),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: ' This is a new flutter instagram UI clone')
              ],
            ),
          ),
        )
      ],
    );
  }
}
