import 'package:di_sl_app_demo/data/injector_services/injector_data_source_post_repository/injector_data_source_post_repository.dart';
import 'package:di_sl_app_demo/domain/entities/post_entity.dart';
import 'package:di_sl_app_demo/domain/usecase/post_usecase.dart';

final class InjectorPostRepositoryIntoPostUseCase {
  late PostUseCase _postUseCase;

  PostUseCase get postUseCase => _postUseCase;

  InjectorPostRepositoryIntoPostUseCase.inject() {
    final getPostRepository = InjectorDataSourceIntoPostRepository.inject();

    _postUseCase =
        PostUseCase(postRepository: getPostRepository.postRepository);
  }

  Future<List<PostEntity>> getAllPosts() async => await _postUseCase();
}
