import 'package:first_group/second_section/Api/general_dio.dart';
import 'package:first_group/second_section/Api/my_model.dart';
import 'package:first_group/second_section/tabbar.dart';
import 'package:flutter/material.dart';

class DioGetLearnView extends StatefulWidget {
  const DioGetLearnView({Key? key}) : super(key: key);

  @override
  State<DioGetLearnView> createState() => _DioGetLearnViewState();
}

class _DioGetLearnViewState extends ProjectLoading<DioGetLearnView> {
  List<UserModel>? items;
  late final MyApiService myApiService;
  @override
  void initState() {
    super.initState();
    myApiService = GeneralDio();
    fetchItemFromMyApi();
  }

  Future<void> fetchItemFromMyApi() async {
    changeWaitValue();
    items = await myApiService.fetchItemFromApi();
    changeWaitValue();
  }

//Basic using
  // Future<void> fetchItemFromMyApi() async {
  //   changeWaitValue();
  //   final response = await dio.get('https://jsonplaceholder.typicode.com/posts');
  //   if (response.statusCode == 200) {
  //     final apiData = response.data;
  //     if (apiData is List) {
  //       items = apiData.map((e) => UserModel.fromJson(e)).toList();
  //       print(items);
  //     }
  //   }
  //   changeWaitValue();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // child: Icon(isWait ? Icons.save : Icons.stop),
      ),
      appBar: AppBar(
        title: isWait ? const Text('Senin datalarin gelir') : const Text('Senin datalarin geldi'),
      ),
      body: ListView.builder(
        itemCount: items?.length ?? 0,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(
                items?[index].name ?? '',
                style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.red),
              ),
              subtitle: Text(items?[index].surname ?? ''),
            ),
          );
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

//TabBarLearn
  void goToSecondPage() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const TabBarLearn(),
    ));
  }
}
