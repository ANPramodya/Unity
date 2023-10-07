import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Group Name'),
                            Text(' - 12 days ago'),
                            Expanded(child: SizedBox()),
                            Icon(Icons.more_vert_outlined)
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                            'Description of a Post comes here as there might be a big caption'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset('./assets/images/Timeline-6.jpg'),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('12k likes - 1k comments'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                              onTap: () {},
                              child: const Icon(Icons.thumb_up_outlined)),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                              onTap: () {},
                              child: const Icon(Icons.mode_comment_outlined)),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                              onTap: () {}, child: const Icon(Icons.share))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider()
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
