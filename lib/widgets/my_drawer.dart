import 'package:flutter/material.dart';
import 'package:unity_app/services/bloc_exports.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          drawerHeader(context),
          drawerMenu(context),
        ],
      ),
    ));
  }
}

Widget drawerHeader(BuildContext context) => Container(
      padding: EdgeInsets.only(
          top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
      color: Colors.amber,
      child: const Column(
        children: [
          CircleAvatar(
            radius: 60.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'User Name',
            style: TextStyle(fontSize: 22.0),
          ),
          Text('dummyEmail@gmail.com', style: TextStyle(fontSize: 16.0))
        ],
      ),
    );

Widget drawerMenu(BuildContext context) => Container(
      child: Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const ListTile(
              leading: Icon(Icons.lock_outline),
              title: Text('Privacy'),
            ),
            const ListTile(
              leading: Icon(Icons.notifications_active_outlined),
              title: Text('Notifications'),
            ),
            const ListTile(
              leading: Icon(Icons.drafts_outlined),
              title: Text('Invite Firends'),
            ),
            const ListTile(
              leading: Icon(Icons.question_mark_outlined),
              title: Text('Help Center'),
            ),
            const ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('About Us'),
            ),
            BlocBuilder<SwitchBloc, SwitchState>(
              builder: (context, state) {
                return ListTile(
                  leading: const Icon(Icons.dark_mode_outlined),
                  title: Switch(
                      value: state.switchValue,
                      onChanged: (newValue) {
                        newValue
                            ? context.read<SwitchBloc>().add(SwitchOnEvent())
                            : context.read<SwitchBloc>().add(SwitchOffEvent());
                      }),
                );
              },
            ),
            const Expanded(child: SizedBox()),
            const ListTile(
              leading: Icon(Icons.power_settings_new_sharp),
              title: Text('Sign Out'),
            ),
            const SizedBox(
              height: 30.0,
            )
          ],
        ),
      ),
    );
