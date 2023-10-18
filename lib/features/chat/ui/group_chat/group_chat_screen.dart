import 'package:flutter/material.dart';
import 'package:unity_app/features/chat/ui/group_chat/group_details_screen.dart';

class GroupChatScreen extends StatelessWidget {
  const GroupChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          titleSpacing: 0.0,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios)),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CircleAvatar(),
              const SizedBox(
                width: 10.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const GroupDetailsScreen()));
                },
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dummy Group Name',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Text(
                      'Someone\'s typing',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
