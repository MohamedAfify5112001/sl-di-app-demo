import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'post_model.g.dart';

@JsonSerializable(createToJson: false)
final class PostModel extends Equatable {
  final int? id;
  final int? userId;
  final String? title;
  final String? body;

  const PostModel({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  @override
  List<Object?> get props => [
        id,
        userId,
        title,
        body,
      ];
}
