import 'package:unity_app/models/user.dart';

class Comments {
  String id;
  String createdAt;
  String creatorId;
  String postId;
  String comment;
  User creator;
  Comments({
    required this.id,
    required this.createdAt,
    required this.creatorId,
    required this.postId,
    required this.comment,
    required this.creator,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'createdAt': createdAt,
      'creatorId': creatorId,
      'postId': postId,
      'comment': comment,
      'creator': creator.toMap(),
    };
  }

  factory Comments.fromMap(Map<String, dynamic> map) {
    return Comments(
      id: map['id'] ?? '',
      createdAt: map['createdAt'] ?? '',
      creatorId: map['creatorId'] ?? '',
      postId: map['postId'] ?? '',
      comment: map['comment'] ?? '',
      creator: User.fromMap(map['creator']),
    );
  }
}
