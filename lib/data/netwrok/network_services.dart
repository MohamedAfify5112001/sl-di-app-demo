import 'package:di_sl_app_demo/data/model/post_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
part 'network_services.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
abstract class NetworkServices {
  factory NetworkServices(Dio dio) = _NetworkServices;

  @GET('/posts')
  Future<List<PostModel>> getAllPosts();
}
