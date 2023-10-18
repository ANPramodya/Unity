import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:unity_app/features/friends/ui/friend_screen.dart';
import 'package:unity_app/features/profile/ui/edit_profile_screen.dart';
import 'package:unity_app/features/profile/ui/profile_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const ProfileHeader(),
        const SizedBox(
          height: 5.0,
        ),
        const Center(
          child: Text(
            'Micheal Jackson',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        const Center(
          child: Text('University of Kelaniya, Software Engineer',
              style: TextStyle()),
        ),
        const SizedBox(
          height: 8.0,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on_outlined),
            Text('Gampaha, Malwana', style: TextStyle())
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        SizedBox(
          height: 50.0,
          width: MediaQuery.of(context).size.width * 0.5,
          child: OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const EditProfile()));
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
              ),
              child: const Text('Edit Profile')),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Column(
                children: [
                  Text('103',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Posts',
                    style: TextStyle(),
                  )
                ],
              ),
              VerticalDivider(
                color: Theme.of(context).dividerColor,
                thickness: 1,
                width: 2,
              ),
              const Column(
                children: [
                  Text('870',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Followers',
                    style: TextStyle(),
                  )
                ],
              ),
              VerticalDivider(
                color: Theme.of(context).dividerColor,
                thickness: 1,
                width: 2,
              ),
              const Column(
                children: [
                  Text('120k',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Following',
                    style: TextStyle(),
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Friends',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(onPressed: () {}, child: const Text('View all'))
            ],
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        SizedBox(
          height: 75,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 0.0),
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.0),
                    color: index != 0 ? null : Colors.grey[700],
                    // color: Colors.amber,
                    border: Border.all(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        width: 3.0),
                  ),
                  child: index != 0
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://images.unsplash.com/photo-1555952517-2e8e729e0b44?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1364&q=80",
                            fit: BoxFit.fill,
                          ),
                        )
                      : IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => FriendScreen()));
                          },
                        ),
                );
              },
            ),
          ),
        ),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data'),
        Text('data')
      ],
    );
  }
}
