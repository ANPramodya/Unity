import 'package:flutter/material.dart';

class EditProfileTab extends StatelessWidget {
  const EditProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('data'),
    );
  }
}


// Column(
          //   children: [
          //     const SizedBox(
          //       height: 20.0,
          //     ),
          //     Center(
          //       child: Stack(
          //         children: [
          //           CircleAvatar(
          //             radius: 70.0,
          //             backgroundImage: CachedNetworkImageProvider(
          //                 'https://images.unsplash.com/photo-1555952517-2e8e729e0b44?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1364&q=80'),
          //           ),
          //           Positioned(
          //               bottom: 0.0,
          //               right: 0.0,
          //               child: IconButton(
          //                 onPressed: () {},
          //                 icon: Icon(
          //                   Icons.camera_alt_outlined,
          //                   color: Colors.grey,
          //                 ),
          //               ))
          //         ],
          //       ),
          //     ),
          //     TextField(
          //       controller: TextEditingController(),
          //       decoration: InputDecoration(labelText: "Full Name"),
          //     )
          //   ],
          // ),