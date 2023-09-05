import 'package:di_sl_app_demo/data/netwrok/network_services.dart';
import 'package:di_sl_app_demo/presentation/view_model/post_view_model_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final instance = GetIt.I;

Future<void> initAppLocator() async {
  instance.registerLazySingleton<NetworkServices>(
    () => NetworkServices(
      Dio(),
    ),
  );
  instance.registerFactory<PostViewModelBloc>(
    () => PostViewModelBloc(),
  );
}
