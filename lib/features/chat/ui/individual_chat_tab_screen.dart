import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndividualChatTabScreen extends StatelessWidget {
  const IndividualChatTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (index, context) => const ListTile(
              leading: CircleAvatar(),
              title: Text('Dummy Group'),
              subtitle: Text('Last Message sent by anyone'),
            ));
  }
}
