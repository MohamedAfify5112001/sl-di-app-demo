import 'package:di_sl_app_demo/app/locator/app_locator.dart';
import 'package:di_sl_app_demo/data/datasource/post_datasource.dart';
import 'package:di_sl_app_demo/data/model/post_model.dart';
import 'package:di_sl_app_demo/data/netwrok/network_services.dart';

final class InjectorNetworkServicesIntoDataSource {
  late PostDataSource _postDataSource;

  PostDataSource get postDataSource => _postDataSource;

  InjectorNetworkServicesIntoDataSource.inject() {
    _postDataSource = PostDataSourceImplementation(instance<NetworkServices>());
  }

  Future<List<PostModel>> getAllPosts() async =>
      await _postDataSource.getAllPosts();
}
