import 'package:flutter/material.dart';
import 'package:unity_app/api/home_api.dart';
import 'package:unity_app/features/home/services/post_service.dart';
import 'package:unity_app/features/home/ui/post_container.dart';
import 'package:unity_app/models/post.dart';
import 'package:unity_app/services/bloc_exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Column(
          children: [
            Expanded(
              child: StreamBuilder(
                  stream: null,
                  builder: (context, snapshot) {
                    return const PostContainer();
                  }),
            )
          ],
        );
      },
    );
  }
}
