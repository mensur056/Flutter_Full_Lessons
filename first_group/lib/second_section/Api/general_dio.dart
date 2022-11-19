import 'package:dio/dio.dart';
import 'package:first_group/second_section/Api/get_request_model.dart';
import 'package:first_group/second_section/Api/my_model.dart';

abstract class MyApiService {
  Future<List<UserModel>?> fetchItemFromApi();
  Future<void> userLogin(UserModel model);
  Future<List<Data>?> fetchFromApiWithData();
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

  @override
  Future<List<Data>?> fetchFromApiWithData() async {
    final response = await dio.get('https://reqres.in/api/unknown');
    if (response.statusCode == 200) {
      final value = GetRequestModel.fromJson(response.data);
      return value.data;
    }

    return null;
  }
}
