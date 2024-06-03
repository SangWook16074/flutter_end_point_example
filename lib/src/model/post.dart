class Post {
  int? id;
  String? title;
  String? post;
  int? userId;
  bool? isPublic;

  Post({this.id, this.title, this.post, this.userId, this.isPublic});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        id: json["id"],
        title: json['title'],
        post: json['post'],
        userId: json['userId'],
        isPublic: json['isPublic']);
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "post": post,
        "userId": userId,
        "isPublic": isPublic,
      };
}

// List<Map<String, dynamic>> data =
// [
//     {
//       "id" : 1,
//       "title" : "제목1",
//       "post" : "게시글 내용 1",
//       "userId" : 1,
//       "isPublic" : true
//     },
//     {
//       "id" : 1,
//       "title" : "제목1",
//       "post" : "게시글 내용 1",
//       "userId" : 1,
//       "isPublic" : true
//     },
//     {
//       "id" : 1,
//       "title" : "제목1",
//       "post" : "게시글 내용 1",
//       "userId" : 1,
//       "isPublic" : true
//     },
//     {
//       "id" : 1,
//       "title" : "제목1",
//       "post" : "게시글 내용 1",
//       "userId" : 1,
//       "isPublic" : true
//     },
//     {
//       "id" : 1,
//       "title" : "제목1",
//       "post" : "게시글 내용 1",
//       "userId" : 1,
//       "isPublic" : true
//     },
// ];