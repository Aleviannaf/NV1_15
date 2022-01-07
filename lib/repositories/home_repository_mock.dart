import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:nv1_15/models/post_model.dart';

import 'home_repository.dart';

class HomeReositoryMock implements HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    var value = await rootBundle.loadString('assets/data.json');

    List postJson = jsonDecode(value);

    return postJson.map((e) => PostModel.fromJson(e)).toList();
  }
}
