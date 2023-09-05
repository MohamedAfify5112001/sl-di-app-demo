import 'package:di_sl_app_demo/data/repository/post_repository_implemntation.dart';
import 'package:di_sl_app_demo/domain/entities/post_entity.dart';
import 'package:di_sl_app_demo/domain/repository/post_repository.dart';

import '../injector_data_source_network_services/injector_data_source_network_services.dart';

final class InjectorDataSourceIntoPostRepository {
  late PostRepository _postRepository;

  PostRepository get postRepository => _postRepository;

  InjectorDataSourceIntoPostRepository.inject() {
    final getPostDataSource = InjectorNetworkServicesIntoDataSource.inject();
    _postRepository = PostRepositoryImplementation(
        postDataSource: getPostDataSource.postDataSource);
  }

}
