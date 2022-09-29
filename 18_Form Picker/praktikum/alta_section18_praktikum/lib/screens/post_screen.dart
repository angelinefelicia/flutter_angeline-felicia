import 'package:alta_section18_praktikum/models/post_manager.dart';
import 'package:alta_section18_praktikum/screens/post_item_screen.dart';
import 'package:alta_section18_praktikum/screens/post_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'empty_post_screen.dart';

Color lightpink = const Color.fromARGB(255, 255, 236, 235);
Color pink = const Color.fromARGB(255, 255, 200, 198);
Color darkpink = const Color.fromARGB(255, 255, 171, 168);

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: lightpink,
      appBar: AppBar(
        title: const Text(
          "Post",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: darkpink,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                final manager =
                    Provider.of<PostManager>(context, listen: false);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PostItemScreen(
                      onCreate: (post) {
                        manager.addPost(post);
                        Navigator.pop(context);
                      },
                    ),
                  ),
                );
              },
              icon: const Icon(
                Icons.post_add_rounded,
                color: Colors.white,
                size: 32,
              ))
        ],
      ),
      body: buildPostScreen(),
    );
  }

  Widget buildPostScreen() {
    return Consumer<PostManager>(
      builder: (context, manager, child) {
        if (manager.postModels.isNotEmpty) {
          return PostListScreen(
            manager: manager,
          );
        } else {
          return const EmptyPostScreen();
        }
      },
    );
  }
}
