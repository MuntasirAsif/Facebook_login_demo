class Post {
  String profileName;
  String profileImage;
  String dateTime;
  String description;
  String postImage;

  Post(
      {required this.profileName,
      required this.profileImage,
      required this.dateTime,
      this.description ='',
      this.postImage =''});
}
