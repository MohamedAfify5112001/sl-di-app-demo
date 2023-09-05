import 'package:di_sl_app_demo/data/model/post_model.dart';

import '../../domain/entities/post_entity.dart';

extension ConverterPostModelToPostEntity on List<PostModel> {
  List<PostEntity> get toDomain => map(
        (post) => PostEntity(
          id: post.id ?? 0,
          userId: post.userId ?? 0,
          title: post.title ?? "",
          body: post.body ?? "",
        ),
      ).toList();
}
