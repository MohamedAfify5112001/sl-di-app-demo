part of 'post_view_model_bloc.dart';

sealed class PostViewModelEvent extends Equatable {
  const PostViewModelEvent();
}

final class FetchAllPostsEvent extends PostViewModelEvent {
  const FetchAllPostsEvent();

  @override
  List<Object> get props => [];
}
