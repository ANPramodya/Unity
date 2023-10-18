import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unity_app/features/chat/ui/group_chat/group_chat_screen.dart';

class GroupChatTabScreen extends StatelessWidget {
  const GroupChatTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // Center(
        //   child: Text('data'),
        // );

        ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => GroupChatScreen()));
                  },
                  child: const ListTile(
                    leading: CircleAvatar(),
                    title: Text('Dummy Group'),
                    subtitle: Text('Last Message sent by anyone'),
                  ),
                ));
  }
}
