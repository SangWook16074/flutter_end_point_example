class PostRepository {
  // GET 메소드, POST, PUT, DELETE
  Future<List<Map<String, dynamic>>> getPost() async {
    // final response = await http.get("서버 URL");
    await Future.delayed(const Duration(seconds: 2));
    return [
      {
        "id": 1,
        "title": "제목1",
        "post": "게시글 내용 1",
        "userId": 1,
        "isPublic": true
      },
      {
        "id": 1,
        "title": "제목1",
        "post": "게시글 내용 1",
        "userId": 1,
        "isPublic": true
      },
      {
        "id": 1,
        "title": "제목1",
        "post": "게시글 내용 1",
        "userId": 1,
        "isPublic": true
      },
      {
        "id": 1,
        "title": "제목1",
        "post": "게시글 내용 1",
        "userId": 1,
        "isPublic": true
      },
      {
        "id": 1,
        "title": "제목1",
        "post": "게시글 내용 1",
        "userId": 1,
        "isPublic": true
      },
    ];
  }
}
