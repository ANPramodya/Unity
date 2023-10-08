import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:unity_app/features/home/ui/comment_tile.dart';

class PostContainer extends StatelessWidget {
  const PostContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        backgroundImage: CachedNetworkImageProvider(
                            'https://images.unsplash.com/photo-1548705085-101177834f47?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1632&q=80'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Group Name',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        ' · 12 days ago',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Expanded(child: SizedBox()),
                      Icon(Icons.more_vert_outlined)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                      'Description of a Post comes here as there might be a big caption'),
                ),
                const SizedBox(
                  height: 10,
                ),
                // Image.asset('./assets/images/Timeline-6.jpg'),
                CachedNetworkImage(
                  imageUrl:
                      'https://images.unsplash.com/photo-1446329813274-7c9036bd9a1f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
                  placeholder: (context, url) => SizedBox(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('12k likes · 1k comments'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: const Icon(Icons.thumb_up_outlined)),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                        onTap: () {
                          _showComments(context);
                        },
                        child: const Icon(Icons.mode_comment_outlined)),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                        onTap: () {}, child: const Icon(Icons.share))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider()
              ],
            ),
          );
        });
  }

  void _showComments(BuildContext context) {
    TextEditingController commentEdittingController = TextEditingController();
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        useSafeArea: true,
        builder: (context) => Container(
              height: MediaQuery.of(context).size.height * 0.75,
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Comments'),
                  const Divider(
                    endIndent: 50.0,
                    indent: 50.0,
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: ((context, index) {
                          return const CommentTile();
                        })),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextField(
                      controller: commentEdittingController,
                      textCapitalization: TextCapitalization.sentences,
                      maxLines: null,
                      decoration: const InputDecoration(
                          icon: Icon(Icons.emoji_emotions_outlined),
                          suffixIcon: Icon(Icons.send_sharp),
                          hintText: 'Type a Comment'),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  )
                ],
              ),
            ));
  }
}
