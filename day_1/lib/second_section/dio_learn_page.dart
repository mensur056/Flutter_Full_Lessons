import 'package:day_1/second_section/Api/general_dio.dart';
import 'package:day_1/second_section/Api/my_model.dart';
import 'package:flutter/material.dart';

class DioLearnView extends StatefulWidget {
  const DioLearnView({Key? key}) : super(key: key);

  @override
  State<DioLearnView> createState() => _DioLearnViewState();
}

class _DioLearnViewState extends ProjectLoading<DioLearnView> {
  List<UserModel>? item;
  late final MyApiService myApiService;

  @override
  void initState() {
    super.initState();
    myApiService = GeneralDio();
    bringItemApi();
    sendToApi();
  }
  //Basic Using
  // Future<List<UserModel>?> fetchItemFromApi() async {
  //   final repo = await dio.get('posts/1/comments');
  //   if (repo.statusCode == 200) {
  //     final value = repo.data;
  //     if (value is List) {
  //       item= value.map((key) => UserModel.fromJson(key)).toList();
  //     }
  //   }
  //   return null;
  // }

//Advance Using

  Future<void> bringItemApi() async {
    changeWaitValue();
    item = await myApiService.fetchItemFromApi();
    changeWaitValue();
  }

  Future<void> sendToApi() async {
    changeWaitValue();
    item = await myApiService.fetchItemFromApi();
    changeWaitValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(isWait ? Icons.save : Icons.stop),
      ),
      appBar: AppBar(
        title: isWait ? const Text('Senin datalarin gelir') : const Text('Senin datalarin geldi'),
      ),
      body: ListView.builder(
        itemCount: item?.length ?? 0,
        itemBuilder: (context, index) {
          return Card(child: Text(item?[index].body ?? 'Senin datalarinda bir problem oldu'));
        },
      ),
    );
  }
}

abstract class ProjectLoading<T extends StatefulWidget> extends State<T> {
  bool isWait = false;
  void changeWaitValue() {
    setState(() {
      isWait = !isWait;
    });
  }
}
