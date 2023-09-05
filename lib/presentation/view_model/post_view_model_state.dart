part of 'post_view_model_bloc.dart';

abstract class PostViewModelState extends Equatable {
  const PostViewModelState();
}

class PostViewModelInitial extends PostViewModelState {
  @override
  List<Object> get props => [];
}

class SuccessFetchAllPostsState extends PostViewModelState {
  final List<PostEntity> posts;

  const SuccessFetchAllPostsState(this.posts);

  @override
  List<Object> get props => [posts];
}

class LoadingFetchAllPostsState extends PostViewModelState {
  @override
  List<Object> get props => [];
}

class FailedFetchAllPostsState extends PostViewModelState {
  @override
  List<Object> get props => [];
}
