import 'package:unity_app/models/group.dart';

class Post {
  String id;
  String createdAt;
  String caption;
  String postImg;
  String visibility;
  String groupId;

  Group? group;
  int? postLikesCount;
  int? commentsCount;
  bool isLiked;
  Post({
    required this.id,
    required this.createdAt,
    required this.caption,
    required this.postImg,
    required this.visibility,
    required this.groupId,
    this.group,
    this.postLikesCount,
    this.commentsCount,
    required this.isLiked,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'createdAt': createdAt,
      'caption': caption,
      'postImg': postImg,
      'visibility': visibility,
      'groupId': groupId,
      'group': group?.toMap(),
      'postLikesCount': postLikesCount,
      'commentsCount': commentsCount,
      'isLiked': isLiked,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      id: map['id'] ?? '',
      createdAt: map['createdAt'] ?? '',
      caption: map['caption'] ?? '',
      postImg: map['postImg'] ?? '',
      visibility: map['visibility'] ?? '',
      groupId: map['groupId'] ?? '',
      group: map['group'] != null ? Group.fromMap(map['group']) : null,
      postLikesCount: map['postLikesCount']?.toInt(),
      commentsCount: map['commentsCount']?.toInt(),
      isLiked: map['isLiked'] ?? false,
    );
  }
}
