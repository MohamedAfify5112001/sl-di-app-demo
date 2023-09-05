import 'package:di_sl_app_demo/presentation/view_model/post_view_model_bloc.dart';
import 'package:di_sl_app_demo/presentation/view_model/post_view_model_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/post_entity.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<PostViewModelBloc>(context).add(const FetchAllPostsEvent());
  }

  List<PostEntity> posts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Posts',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: BlocConsumer<PostViewModelBloc, PostViewModelState>(
        listener: (context, state) {
          if (state is SuccessFetchAllPostsState) {
            posts = state.posts;
          }
        },
        builder: (context, state) {
          return ListView.separated(
            itemBuilder: (context, index) => ListTile(
              title: Text(
                posts[index].title,
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(color: Colors.black, fontSize: 20.0),
              ),
              subtitle: Text(
                posts[index].body,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.grey,
                    ),
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 20.0,
            ),
            itemCount: posts.length,
          );
        },
      ),
    );
  }
}
