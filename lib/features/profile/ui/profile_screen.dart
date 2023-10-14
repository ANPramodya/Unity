import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:unity_app/features/profile/ui/edit_profile_screen.dart';
import 'package:unity_app/features/profile/ui/profile_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfileHeader(),
        const SizedBox(
          height: 5.0,
        ),
        const Text(
          'Micheal Jackson',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 8.0,
        ),
        const Text('University of Kelaniya, Software Engineer',
            style: TextStyle()),
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
          width: MediaQuery.of(context).size.width * 0.9,
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
          height: 10.0,
        ),
      ],
    );
  }
}
