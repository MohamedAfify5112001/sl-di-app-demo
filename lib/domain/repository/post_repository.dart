import 'package:di_sl_app_demo/domain/entities/post_entity.dart';

abstract interface class PostRepository {
  Future<List<PostEntity>> getAllPosts();
}


