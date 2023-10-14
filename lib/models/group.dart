import 'package:unity_app/models/user.dart';

class Group {
  String id;
  String createdAt;
  String creatorId;
  String groupName;
  String groupDescription;
  String? groupImage;
  List<UsersOnGroups>? users;
  List<PostsOnGroup>? posts;
  Group({
    required this.id,
    required this.createdAt,
    required this.creatorId,
    required this.groupName,
    required this.groupDescription,
    this.groupImage,
    this.users,
    this.posts,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'createdAt': createdAt,
      'creatorId': creatorId,
      'groupName': groupName,
      'groupDescription': groupDescription,
      'groupImage': groupImage,
      'users': users?.map((x) => x?.toMap())?.toList(),
      'posts': posts?.map((x) => x?.toMap())?.toList(),
    };
  }

  factory Group.fromMap(Map<String, dynamic> map) {
    return Group(
      id: map['id'] ?? '',
      createdAt: map['createdAt'] ?? '',
      creatorId: map['creatorId'] ?? '',
      groupName: map['groupName'] ?? '',
      groupDescription: map['groupDescription'] ?? '',
      groupImage: map['groupImage'],
      users: map['users'] != null
          ? List<UsersOnGroups>.from(
              map['users']?.map((x) => UsersOnGroups.fromMap(x)))
          : null,
      posts: map['posts'] != null
          ? List<PostsOnGroup>.from(
              map['posts']?.map((x) => PostsOnGroup.fromMap(x)))
          : null,
    );
  }
}

class UsersOnGroups {
  String userId;
  String groupId;
  String userRole;
  User user;
  UsersOnGroups({
    required this.userId,
    required this.groupId,
    required this.userRole,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'groupId': groupId,
      'userRole': userRole,
      'user': user.toMap(),
    };
  }

  factory UsersOnGroups.fromMap(Map<String, dynamic> map) {
    return UsersOnGroups(
      userId: map['userId'] ?? '',
      groupId: map['groupId'] ?? '',
      userRole: map['userRole'] ?? '',
      user: User.fromMap(map['user']),
    );
  }
}

class PostsOnGroup {
  String id;
  String createdAt;
  String caption;
  String postImg;
  String visibility;
  String groupId;
  PostsOnGroup({
    required this.id,
    required this.createdAt,
    required this.caption,
    required this.postImg,
    required this.visibility,
    required this.groupId,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'createdAt': createdAt,
      'caption': caption,
      'postImg': postImg,
      'visibility': visibility,
      'groupId': groupId,
    };
  }

  factory PostsOnGroup.fromMap(Map<String, dynamic> map) {
    return PostsOnGroup(
      id: map['id'] ?? '',
      createdAt: map['createdAt'] ?? '',
      caption: map['caption'] ?? '',
      postImg: map['postImg'] ?? '',
      visibility: map['visibility'] ?? '',
      groupId: map['groupId'] ?? '',
    );
  }
}
