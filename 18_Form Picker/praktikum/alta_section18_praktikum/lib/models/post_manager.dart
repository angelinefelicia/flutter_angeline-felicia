import 'package:alta_section18_praktikum/models/post_model.dart';
import 'package:flutter/cupertino.dart';

class PostManager extends ChangeNotifier {
  final _postModels = <PostModel>[];
  List<PostModel> get postModels => List.unmodifiable(_postModels);

  void addPost(PostModel post) {
    _postModels.add(post);
    notifyListeners();
  }
}
