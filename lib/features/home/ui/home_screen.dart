import 'package:flutter/material.dart';
import 'package:unity_app/features/home/ui/post_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: PostContainer(),
        )
      ],
    );
  }
}
