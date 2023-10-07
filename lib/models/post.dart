class Post {
  final String postId;
  final String postCaption;
  final String imageUrl;
  final String timeAgo;
  final int likes;
  final int comments;
  final String groupName;
  Post({
    required this.postId,
    required this.postCaption,
    required this.imageUrl,
    required this.timeAgo,
    required this.likes,
    required this.comments,
    required this.groupName,
  });

  Map<String, dynamic> toMap() {
    return {
      'postId': postId,
      'postCaption': postCaption,
      'imageUrl': imageUrl,
      'timeAgo': timeAgo,
      'likes': likes,
      'comments': comments,
      'groupName': groupName,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      postId: map['postId'] ?? '',
      postCaption: map['postCaption'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      timeAgo: map['timeAgo'] ?? '',
      likes: map['likes']?.toInt() ?? 0,
      comments: map['comments']?.toInt() ?? 0,
      groupName: map['groupName'] ?? '',
    );
  }
}
