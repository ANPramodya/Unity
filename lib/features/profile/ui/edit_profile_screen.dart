import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:unity_app/features/profile/ui/edit_profile_tab.dart';
import 'package:unity_app/features/profile/ui/edit_resume_tab.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    _tabController.addListener(() {
      setState(() {
        switch (_tabController.index) {
          case 0:
            AppBarTitle = 'Edit Profile';
            break;
          case 1:
            AppBarTitle = 'Edit Resume';
            break;
        }
      });
    });
  }

  String AppBarTitle = 'Edit Profile';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              AppBarTitle,
              style: const TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.1),
            ),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            bottom: TabBar(controller: _tabController, tabs: const [
              Tab(
                icon: Icon(Icons.person_outline_rounded),
                text: 'Profile',
              ),
              Tab(
                icon: Icon(Icons.description_outlined),
                text: "Resume",
              )
            ]),
          ),
          body: TabBarView(
            controller: _tabController,
            children: const [EditProfileTab(), EditResumeTab()],
          )),
    );
  }
}
