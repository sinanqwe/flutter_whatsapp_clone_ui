class ChatModel{
  final String name;
  final String message;
  final String time;
  final String photoUrl;

  ChatModel({required this.name, required this.message, required this.time, required this.photoUrl});
}

List<ChatModel> data = [
  ChatModel(name: "Sinan Yılmaz", message: "Naber", time: "10:22", photoUrl: "assets/images/profile-photo.jpg"),
  ChatModel(name: "Bruce Banner", message: "Belgeleri aldın mı ?", time: "08:22", photoUrl: "assets/images/profile-photo.jpg"),
  ChatModel(name: "Tony Stark", message: "Raporları yollamayı unutma.", time: "07:02", photoUrl: "assets/images/profile-photo.jpg"),
];