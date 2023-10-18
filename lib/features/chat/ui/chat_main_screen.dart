import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unity_app/features/chat/ui/group_chat_tab_screen.dart';
import 'package:unity_app/features/chat/ui/individual_chat_tab_screen.dart';
import 'package:unity_app/features/chat/ui/job_post_tab_screen.dart';

class ChatMainScreen extends StatelessWidget {
  const ChatMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TabBar(tabs: [
          Tab(
            icon: Icon(Icons.group_outlined),
          ),
          Tab(
            icon: Icon(Icons.person_outline_rounded),
          ),
          Tab(
            icon: Icon(Icons.cases_outlined),
          )
        ]),
        Expanded(
          child: TabBarView(children: [
            GroupChatTabScreen(),
            IndividualChatTabScreen(),
            JobPostTabScreen()
          ]),
        )
      ],
    );
  }
}
