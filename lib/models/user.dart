class User {
  String id;
  String createdAt;
  String updatedAt;
  dynamic email;
  String username;
  String uniEmail;
  String hash;
  String firstName;
  String lastName;
  dynamic profilePic;
  dynamic coverImg;
  String university;
  String faculty;
  dynamic department;
  String isOnline;
  User({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.email,
    required this.username,
    required this.uniEmail,
    required this.hash,
    required this.firstName,
    required this.lastName,
    required this.profilePic,
    required this.coverImg,
    required this.university,
    required this.faculty,
    required this.department,
    required this.isOnline,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'email': email,
      'username': username,
      'uniEmail': uniEmail,
      'hash': hash,
      'firstName': firstName,
      'lastName': lastName,
      'profilePic': profilePic,
      'coverImg': coverImg,
      'university': university,
      'faculty': faculty,
      'department': department,
      'isOnline': isOnline,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] ?? '',
      createdAt: map['createdAt'] ?? '',
      updatedAt: map['updatedAt'] ?? '',
      email: map['email'] ?? null,
      username: map['username'] ?? '',
      uniEmail: map['uniEmail'] ?? '',
      hash: map['hash'] ?? '',
      firstName: map['firstName'] ?? '',
      lastName: map['lastName'] ?? '',
      profilePic: map['profilePic'] ?? null,
      coverImg: map['coverImg'] ?? null,
      university: map['university'] ?? '',
      faculty: map['faculty'] ?? '',
      department: map['department'] ?? null,
      isOnline: map['isOnline'] ?? '',
    );
  }
}
