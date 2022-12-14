import 'package:dio/dio.dart';
import 'package:first_group/second_section/Api/dio_get_learn_page.dart';
import 'package:first_group/second_section/Api/test_api/general_service.dart';
import 'package:first_group/second_section/Api/test_api/local_model.dart';
import 'package:flutter/material.dart';

class LocalGetDioLearn extends StatefulWidget {
  const LocalGetDioLearn({Key? key}) : super(key: key);

  @override
  State<LocalGetDioLearn> createState() => _LocalGetDioLearnState();
}

class _LocalGetDioLearnState extends ProjectLoading<LocalGetDioLearn> {
  Dio dio = Dio(BaseOptions(baseUrl: 'http://localhost:3000/'));
  List<UserModelRequest>? items;
  late final ProjectService projectService;
  @override
  void initState() {
    setState(() {
      super.initState();
      projectService = GeneralService();
      fetchItemFromLocalHost();
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        refreshKey.currentState?.show();
      });
    });
  }

  Future<void> fetchItemFromLocalHost() async {
    changeWaitValue();
    final response = await dio.get('users');
    if (response.statusCode == 200) {
      final userData = response.data;
      if (userData is List) {
        items = userData.map((e) => UserModelRequest.fromJson(e)).toList();
      }
    }
    changeWaitValue();
  }

  Future<void> deleteItemFromApi(int userId) async {
    projectService.removeItemFromLocalHost(userId);
  }

  final GlobalKey<RefreshIndicatorState> refreshKey = GlobalKey<RefreshIndicatorState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      appBar: AppBar(),
      body: RefreshIndicator(
        key: refreshKey,
        onRefresh: fetchItemFromLocalHost,
        child: Center(
          child: ListView.builder(
            itemCount: items?.length ?? 0,
            itemBuilder: (context, index) => Card(
              // color: Color(int.parse(items?[index].color ?? '')),
              child: ListTile(
                  onTap: () {
                    setState(() {
                      deleteItemFromApi(items?[index].id ?? 0);
                      refreshKey.currentState?.show();
                    });
                  },
                  leading: Text(items?[index].age.toString() ?? ''),
                  title: Text(items?[index].name ?? ''),
                  subtitle: Text(items?[index].surname ?? ''),
                  trailing: Text(items?[index].title ?? '')),
            ),
          ),
        ),
      ),
    );
  }
}
