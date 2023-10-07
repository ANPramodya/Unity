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
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
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
                              Icon(Icons.menu)
                            ],
                          ),
                          const Text(
                              'Description of a Post comes here as there might be a big caption'),
                          const SizedBox(
                            height: 10,
                          ),
                          Image.asset('./assets/images/Timeline-6.jpg'),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('12k likes - 1k comments'),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.thumb_up_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.mode_comment_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.share)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}

// ListTile(
//                   leading: const CircleAvatar(),
//                   title: const Text('Group Name'),
//                   subtitle: Column(
//                     children: [
//                       const Text(
//                           'Description of a Post comes here as there might be a big caption'),
//                       const SizedBox(
//                         height: 20,
//                       ),
//                       Image.asset('./assets/images/Timeline-6.jpg')
//                     ],
//                   ),
//                 );