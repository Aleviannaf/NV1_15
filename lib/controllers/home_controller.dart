import 'package:flutter/widgets.dart';
import 'package:nv1_15/models/post_model.dart';
import 'package:nv1_15/repositories/home_repository.dart';

class HomeController {
  final HomeRepository _homeController;

  HomeController(this._homeController);

  ValueNotifier<List<PostModel>> post = ValueNotifier<List<PostModel>>([]);

  fetch() async{
    post.value= await _homeController.getList();
  }
}
