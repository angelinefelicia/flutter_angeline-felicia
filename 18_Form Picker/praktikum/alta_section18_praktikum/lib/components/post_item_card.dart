import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/post_model.dart';

class PostItemCard extends StatelessWidget {
  const PostItemCard({Key? key, required this.post}) : super(key: key);
  final PostModel post;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        border: Border.all(color: post.color, width: 2),
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          5,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: post.image != null
                  ? SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: Image.file(
                        post.image!,
                        fit: BoxFit.cover,
                      ))
                  : Container(
                      height: 150,
                    ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Published: ${DateFormat("dd/MM/yyyy").format(post.date)}",
                  style: const TextStyle(fontSize: 14, color: Colors.black),
                ),
                Row(
                  children: [
                    const Text(
                      "Color: ",
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    CircleAvatar(
                      backgroundColor: post.color,
                      radius: 8,
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: double.infinity,
              child: Text(
                post.caption,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
