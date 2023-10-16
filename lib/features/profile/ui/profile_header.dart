import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.25 + 70,
          width: MediaQuery.of(context).size.width,
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.25,
          child: CachedNetworkImage(
            imageUrl:
                'https://images.unsplash.com/photo-1506268452458-bfb3757ed859?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1469&q=80',
            placeholder: (context, url) => const SizedBox(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
            // top: MediaQuery.of(context).size.height * 0.3 - 65,
            // left: MediaQuery.of(context).size.width / 2 - 65,
            bottom: 10.0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      width: 3.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(28),
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://images.unsplash.com/photo-1555952517-2e8e729e0b44?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1364&q=80",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
