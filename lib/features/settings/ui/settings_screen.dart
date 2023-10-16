import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(
              fontSize: 25.0, fontWeight: FontWeight.w400, letterSpacing: 1.1),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Account',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[800]),
                child: const Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Edit Profile'),
                    ),
                    ListTile(
                      leading: Icon(Icons.shield_outlined),
                      title: Text('Security'),
                    ),
                    ListTile(
                      leading: Icon(Icons.notifications_none_outlined),
                      title: Text('Notifications'),
                    ),
                    ListTile(
                      leading: Icon(Icons.lock_outline_rounded),
                      title: Text('Privacy'),
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Support & About',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[800]),
                child: const Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.credit_card),
                      title: Text('My Subscriptions'),
                    ),
                    ListTile(
                      leading: Icon(Icons.help_outline_rounded),
                      title: Text('Helps & Support'),
                    ),
                    ListTile(
                      leading: Icon(Icons.info_outline_rounded),
                      title: Text('Terms & Policies'),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Cache & Cellular',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[800]),
                child: const Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.delete_outline_rounded),
                      title: Text('Free up space'),
                    ),
                    ListTile(
                      leading: Icon(Icons.data_exploration_outlined),
                      title: Text('Data Saver'),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Actions',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[800]),
                child: const Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.flag_outlined),
                      title: Text('Report a problem'),
                    ),
                    ListTile(
                      leading: Icon(Icons.power_settings_new_outlined),
                      title: Text('Log out'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
