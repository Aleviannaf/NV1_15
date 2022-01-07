import 'package:nv1_15/models/post_model.dart';

abstract class HomeRepository {
  Future<List<PostModel>> getList();
}
