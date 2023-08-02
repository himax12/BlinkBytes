class thread {
  String? name;
  String? posted;
  String? description;
  String? image;
  String? profileImage;
  String? replies;
  String? likes;
  String? replier;
  String? replier2;
  thread(
    this.name,
    this.posted,
    this.description,
    this.image,
    this.profileImage,
    this.replies,
    this.likes,
    this.replier,
    this.replier2,
  );

  factory thread.formJson(Map<String, String> jsonObject) {
    return thread(
      jsonObject['name'],
      jsonObject['posted'],
      jsonObject['description'],
      jsonObject['image'],
      jsonObject['profileImange'],
      jsonObject['replies'],
      jsonObject['likes'],
      jsonObject['replier'],
      jsonObject['replier2'],
    );
  }
}
