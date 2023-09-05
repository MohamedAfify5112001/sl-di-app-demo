import 'package:equatable/equatable.dart';

final class PostEntity extends Equatable {
  final int id;
  final int userId;
  final String title;
  final String body;

  const PostEntity({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  @override
  List<Object> get props => [
        id,
        userId,
        title,
        body,
      ];
}
