import 'package:di_sl_app_demo/data/model/post_model.dart';
import 'package:di_sl_app_demo/data/netwrok/network_services.dart';

abstract interface class PostDataSource {
  Future<List<PostModel>> getAllPosts();
}

final class PostDataSourceImplementation implements PostDataSource {
  final NetworkServices networkServices;

  PostDataSourceImplementation(this.networkServices);

  @override
  Future<List<PostModel>> getAllPosts() async =>
      await networkServices.getAllPosts();
}
