import 'package:flutter/material.dart';
import 'package:flutter_end_point_example/src/model/post.dart';
import 'package:flutter_end_point_example/src/view/post/post_view_model.dart';
import 'package:provider/provider.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PostViewModel>(builder: (context, provider, child) {
      final List<Post> data = provider.post;
      return (data.isNotEmpty)
          ? Expanded(
              child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final Post post = data[index];
                    return ListTile(
                      title: Text(post.title!),
                      subtitle: Text(post.post!),
                    );
                  }),
            )
          : const Center(
              child: CircularProgressIndicator.adaptive(),
            );
    });
  }
}
