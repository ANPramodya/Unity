import 'package:flutter/material.dart';

class CommentTile extends StatelessWidget {
  const CommentTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
          leading: CircleAvatar(),
          title: Row(
            children: [
              Text('User Name'),
              Text(
                ' · 12 min ago',
                style: TextStyle(fontSize: 12.0),
              )
            ],
          ),
          subtitle: Column(
            children: [
              Text(
                  'Comment Can be big enough to ellipse or short enough to fit.'),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Icon(
                    Icons.thumb_up_outlined,
                    size: 15.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text("· 1.2k likes")
                ],
              )
            ],
          )),
    );
  }
}
