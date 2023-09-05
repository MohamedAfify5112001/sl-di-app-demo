import 'package:di_sl_app_demo/app/extension/app_extension.dart';
import 'package:di_sl_app_demo/data/datasource/post_datasource.dart';
import 'package:di_sl_app_demo/domain/entities/post_entity.dart';
import 'package:di_sl_app_demo/domain/repository/post_repository.dart';

final class PostRepositoryImplementation implements PostRepository {
  final PostDataSource postDataSource;

  PostRepositoryImplementation({
    required this.postDataSource,
  });

  @override
  Future<List<PostEntity>> getAllPosts() async {
    final getPostFromRemoteDataSource = await postDataSource.getAllPosts();
    final toDomainPosts = getPostFromRemoteDataSource.toDomain;
    return toDomainPosts;
  }
}
