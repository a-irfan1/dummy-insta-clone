import 'package:flutter/material.dart';
import 'package:flutter_insta_clone/utils/reels_grid.dart';

class Reels extends StatelessWidget {
  const Reels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReelsGrid(),
    );
  }
}
