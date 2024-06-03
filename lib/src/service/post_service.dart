import 'package:flutter_end_point_example/src/model/post.dart';
import 'package:flutter_end_point_example/src/repository/post_repository.dart';

class PostService {
  final PostRepository postRepository;

  PostService({required this.postRepository});

  Future<List<Post>> getPosts() async {
    final result = await postRepository.getPost();
    return result.map((json) => Post.fromJson(json)).toList();
  }
}
