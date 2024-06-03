import 'package:flutter/material.dart';
import 'package:flutter_end_point_example/src/model/post.dart';
import 'package:flutter_end_point_example/src/service/post_service.dart';

class PostViewModel extends ChangeNotifier {
  final List<Post> _posts = List.empty(growable: true);

  List<Post> get post => _posts;

  final PostService postService;

  PostViewModel({
    required this.postService,
  }) {
    _fetchData();
  }

  void _fetchData() async {
    final result = await postService.getPosts();
    _posts.clear();
    _posts.addAll(result);
    notifyListeners();
  }
}
