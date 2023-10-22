import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class EditProfileTab extends StatelessWidget {
  const EditProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          const Text('Profile Photo',
              style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 5.0,
          ),
          Center(
            child: Stack(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      width: 2.0,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://images.unsplash.com/photo-1555952517-2e8e729e0b44?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1364&q=80',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Positioned(
                    bottom: 5.0,
                    right: 5.0,
                    child: Icon(
                      Icons.camera_alt_outlined,
                      size: 35.0,
                      color: Colors.grey,
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text('Cover Photo',
              style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 5.0,
          ),
          Center(
            child: Stack(
              children: [
                Center(
                  child: Container(
                    height: 200,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        width: 2.0,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://images.unsplash.com/photo-1506268452458-bfb3757ed859?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1469&q=80',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                    bottom: 5.0,
                    right: 5.0,
                    child: Icon(
                      Icons.camera_alt_outlined,
                      size: 35.0,
                      color: Colors.grey,
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Email address',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  initialValue: 'anpramodya@gmail.com',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This field is reqiured';
                    }
                    return null;
                  },
                  style: const TextStyle(color: Colors.grey),
                  decoration: const InputDecoration(),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text('University',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextFormField(
                  initialValue: 'University of Kelaniya',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This field is reqiured';
                    }
                    return null;
                  },
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text('Some Data',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextFormField(
                  initialValue: 'Some Fake Data',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This field is reqiured';
                    }
                    return null;
                  },
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text('Some Information',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextFormField(
                  initialValue: 'Some Fake Information',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This field is reqiured';
                    }
                    return null;
                  },
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text('Fake Data',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextFormField(
                  initialValue: 'Some Fake Data',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This field is reqiured';
                    }
                    return null;
                  },
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text('Fake Information',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextFormField(
                  initialValue: 'Some Actual Information',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This field is reqiured';
                    }
                    return null;
                  },
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Row(children: [
            Expanded(
                child: OutlinedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0))),
                    ),
                    onPressed: () {},
                    child: const Text('Cancel'))),
            const SizedBox(
              width: 10.0,
            ),
            Expanded(
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.greenAccent),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0))),
                    ),
                    onPressed: () {},
                    child: const Text('Save'))),
          ]),
          const SizedBox(
            height: 30.0,
          )
        ],
      ),
    );
  }
}
