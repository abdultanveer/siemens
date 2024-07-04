class Album {
  final int id;
  final int userId;
  final String title;

  //primary constructor
  const Album({
    required this.id,
    required this.userId,
    required this.title
  });

  factory Album.fromJson(Map<String, dynamic> json){
    return Album(id: json['id'], userId: json['userId'], title: json['title']);
  }



}