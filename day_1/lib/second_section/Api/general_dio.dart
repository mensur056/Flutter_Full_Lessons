import 'package:day_1/second_section/Api/my_model.dart';
import 'package:dio/dio.dart';

abstract class MyApiService {
  Future<List<UserModel>?> fetchItemFromApi();
  Future<void> userLogin(UserModel model);
}

class GeneralDio implements MyApiService {
  Dio dio = Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  @override
  Future<List<UserModel>?> fetchItemFromApi() async {
    final repo = await dio.get('posts');
    if (repo.statusCode == 200) {
      final value = repo.data;
      if (value is List) {
        return value.map((key) => UserModel.fromJson(key)).toList();
      }
    }
    return null;
  }

  @override
  Future<void> userLogin(UserModel model) async {
    final response = await dio.post('posts', data: model);
    if (response.statusCode == 200) {
      return response.data;
    }
  }
}
