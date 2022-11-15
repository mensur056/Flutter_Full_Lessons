import 'package:day_1/second_section/Api/dio_get_learn_page.dart';
import 'package:day_1/second_section/Api/general_dio.dart';
import 'package:day_1/second_section/Api/get_request_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class GetRequestView extends StatefulWidget {
  const GetRequestView({Key? key}) : super(key: key);

  @override
  State<GetRequestView> createState() => _GetRequestViewState();
}

class _GetRequestViewState extends ProjectLoading<GetRequestView> {
  List<Data>? items;
  Dio dio = Dio();
  late final MyApiService myApiService;
  @override
  void initState() {
    super.initState();
    myApiService = GeneralDio();
    fetchFromItem();
  }

  // Future<GetRequestModel?> fetchItemFromApi() async {
  //   changeWaitValue();
  //   final response = await dio.get('https://reqres.in/api/unknown');
  //   if (response.statusCode == 200) {
  //     final value = GetRequestModel.fromJson(response.data);
  //     items = value.data;
  //   }
  //   changeWaitValue();
  //   return null;
  // }

  Future<void> fetchFromItem() async {
    changeWaitValue();
    items = await myApiService.fetchFromApiWithData();
    changeWaitValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: items?.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return Text(items?[index].pantoneValue ?? '');
        },
      ),
    );
  }
}
