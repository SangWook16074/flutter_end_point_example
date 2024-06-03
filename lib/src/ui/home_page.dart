import 'package:flutter/material.dart';
import 'package:flutter_end_point_example/src/repository/post_repository.dart';
import 'package:flutter_end_point_example/src/service/post_service.dart';
import 'package:flutter_end_point_example/src/view/post/post_view.dart';
import 'package:flutter_end_point_example/src/view/post/post_view_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("홈 화면"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _postView(),
        ],
      ),
    );
  }

  Widget _postView() => ChangeNotifierProvider(
        create: (context) => PostViewModel(
            postService: PostService(postRepository: PostRepository())),
        child: const PostView(),
      );
}
