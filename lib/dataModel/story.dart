class Story {
  final int id;
  final String name;
  final String profileImage;
  final String contentImage;

  Story(
      {required this.id,
      required this.name,
      required this.profileImage,
      required this.contentImage});

  factory Story.fromJson(Map<String, dynamic> json) {
    return Story(
        id: json["id"],
        name: json["name"],
        profileImage: json["profileImage"],
        contentImage: json["contentImage"]);
  }
}
