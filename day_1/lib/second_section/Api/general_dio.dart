import 'package:day_1/second_section/Api/my_model.dart';
import 'package:dio/dio.dart';

abstract class MyApiService {
  Future<List<UserModel>?> fetchItemFromApi();
  Future<List<UserModel>?> fetchItemFromApi1(String value);
}

class GeneralDio implements MyApiService {
  Dio dio = Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  @override
  Future<List<UserModel>?> fetchItemFromApi() async {
    final repo = await dio.get('posts/1/comments');
    if (repo.statusCode == 200) {
      final value = repo.data;
      if (value is List) {
        return value.map((key) => UserModel.fromJson(key)).toList();
      }
    }
    return null;
  }

  @override
  Future<List<UserModel>?> fetchItemFromApi1(String value) async {
    final repo = await dio.post('posts/', data: value);
    if (repo.statusCode == 200) {
      final value = repo.data;
      if (value is List) {
        return value.map((key) => UserModel.fromJson(key)).toList();
      }
    }
    return null;
  }
}
