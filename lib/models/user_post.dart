class UserPost {
  final String? dp;
  final String? bdImage;
  final String? text;
  UserPost({required this.text, required this.bdImage, required this.dp});
  static List<UserPost> user = [
    UserPost(
      text: "saim",
      bdImage:
          "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      dp: "",
    ),
    UserPost(
      text: "hello",
      bdImage:
          "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      dp: "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
    UserPost(
      text: "Ayaz",
      bdImage:
          "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      dp: "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    ),
  ];
}
