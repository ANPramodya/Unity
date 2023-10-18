import 'package:flutter/material.dart';

class GroupDetailsScreen extends StatelessWidget {
  const GroupDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text('Dummy Group Name'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10.0,
            ),
            const Center(
              child: CircleAvatar(
                radius: 70.0,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.phone,
                      size: 35.0,
                    )),
                const SizedBox(
                  width: 40.0,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.video_call_outlined,
                      size: 40.0,
                    )),
                const SizedBox(
                  width: 40.0,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search_outlined,
                      size: 40.0,
                    ))
              ],
            ),
            const Divider(),
            const ListTile(
              title: Text('Some Option'),
              subtitle: Text('Describing the Option'),
            ),
            const ListTile(
              title: Text('Some Option'),
              subtitle: Text('Describing the Option'),
            ),
            const ListTile(
              title: Text('Some Option'),
              subtitle: Text('Describing the Option'),
            ),
            const Divider(
              height: 20.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Text(
                    'Participants',
                  ),
                  Expanded(child: SizedBox())
                ],
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 20,
                itemBuilder: ((context, index) => const ListTile(
                      leading: CircleAvatar(),
                      title: Text('Someone\'s Name '),
                      subtitle: Text('Admin'),
                    ))),
            Divider(),
            ListTile(
              // tileColor: Colors.grey[600],
              leading: Icon(
                Icons.logout_outlined,
                color: Colors.redAccent,
              ),
              title: Text(
                'Leave Group',
                style: TextStyle(color: Colors.redAccent),
              ),
            ),
            Divider(
              height: 0.0,
            ),
            ListTile(
              // tileColor: Colors.grey[600],
              leading: Icon(Icons.flag_circle_rounded, color: Colors.redAccent),
              title: Text(
                'Report Group',
                style: TextStyle(color: Colors.redAccent),
              ),
            )
          ],
        ),
      ),
    );
  }
}
