import 'package:flutter/material.dart';

import '../components/post_item_card.dart';
import '../models/post_manager.dart';

class PostListScreen extends StatelessWidget {
  const PostListScreen({Key? key, required this.manager}) : super(key: key);
  final PostManager manager;

  @override
  Widget build(BuildContext context) {
    final postItems = manager.postModels;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView.separated(
        itemCount: postItems.length,
        itemBuilder: (context, index) {
          final item = postItems[index];
          return PostItemCard(
            key: Key(item.caption),
            post: item,
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10,
          );
        },
      ),
    );
  }
}
