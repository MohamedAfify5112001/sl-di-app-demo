import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:di_sl_app_demo/data/injector_services/injector_post_repositroy_usecase/injector_post_repositroy_usecase.dart';
import 'package:equatable/equatable.dart';

import '../../domain/entities/post_entity.dart';

part 'post_view_model_event.dart';
part 'post_view_model_state.dart';

class PostViewModelBloc extends Bloc<PostViewModelEvent, PostViewModelState> {
  PostViewModelBloc() : super(PostViewModelInitial()) {
    on<FetchAllPostsEvent>(_onFetchAllPostsEvent);
  }

  Future<void> _onFetchAllPostsEvent(
      FetchAllPostsEvent event, Emitter<PostViewModelState> emit) async {
    emit(LoadingFetchAllPostsState());
    final getPostUseCase = InjectorPostRepositoryIntoPostUseCase.inject();
    try {
      final posts = await getPostUseCase.getAllPosts();
      emit(SuccessFetchAllPostsState(posts));
    } catch (error) {
      emit(FailedFetchAllPostsState());
    }
  }
}
