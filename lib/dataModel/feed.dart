class Feed {
  final int id;
  final String name;
  final String description;
  final String feedImage1;
  final String feedImage2;
  final String profileImage;
  final String time;

  Feed(
      {required this.id,
      required this.name,
      required this.description,
      required this.feedImage1,
      required this.feedImage2,
      required this.profileImage,
      required this.time});

  factory Feed.fromJson(Map<String, dynamic> json) {
    return Feed(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        feedImage1: json["feedImage1"],
        feedImage2: json["feedImage2"],
        profileImage: json["profileImage"],
        time: json["time"]);
  }
}
