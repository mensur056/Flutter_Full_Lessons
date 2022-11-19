import 'package:dio/dio.dart';
import 'package:first_group/second_section/Api/test_api/local_model.dart';

abstract class ProjectService {
  Future<List<UserModelRequest>?> fetchItemFromLocalHost();
  bool? removeItemFromLocalHost(int id);
}

class GeneralService extends ProjectService {
  Dio dio = Dio(BaseOptions(baseUrl: 'http://localhost:3000/'));
  @override
  Future<List<UserModelRequest>?> fetchItemFromLocalHost() async {
    final response = await dio.get('users');
    if (response.statusCode == 200) {
      final userData = response.data;
      if (userData is List) {
        return userData.map((e) => UserModelRequest.fromJson(e)).toList();
      }
    }
    return null;
  }

  @override
  bool? removeItemFromLocalHost(int id) {
    final response = dio.delete(
      'users/$id',
    );
    return null;
  }
}
