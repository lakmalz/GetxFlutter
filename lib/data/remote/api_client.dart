
import 'package:dio/dio.dart';
import 'package:getxflutter/data/remote/response/todo_list.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: '')
// https://jsonplaceholder.typicode.com/
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;


  @GET('/todos')
  Future<TodoListResponse> accountPortfolio();
}