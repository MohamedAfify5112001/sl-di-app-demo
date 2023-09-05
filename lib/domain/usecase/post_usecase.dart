import 'package:di_sl_app_demo/domain/repository/post_repository.dart';
import 'package:equatable/equatable.dart';

import '../entities/post_entity.dart';

final class PostUseCase extends Equatable {
  final PostRepository postRepository;

  const PostUseCase({
    required this.postRepository,
  });

  Future<List<PostEntity>> call() async => await postRepository.getAllPosts();

  @override
  List<Object> get props => [postRepository];
}
