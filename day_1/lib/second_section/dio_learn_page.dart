import 'dart:io';

import 'package:day_1/second_section/Api/my_model.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class DioLearnPage extends StatefulWidget {
  const DioLearnPage({Key? key}) : super(key: key);

  @override
  State<DioLearnPage> createState() => _DioLearnPageState();
}

class _DioLearnPageState extends State<DioLearnPage> {
  @override
  void initState() {
    super.initState();
    bringItemFromApi();
  }

  List<MyModel>? _items;
  bool isWait = false;
  void waitItem() {
    setState(() {
      isWait = !isWait;
    });
  }

  Future<void> bringItemFromApi() async {
    waitItem(); //true
    final response = await Dio().get('https://jsonplaceholder.typicode.com/posts');
    if (response.statusCode == HttpStatus.ok) {
      final itemData = response.data;
      if (itemData is List) {
        _items = itemData.map((e) => MyModel.fromJson(e)).toList();
      }
    }
    waitItem(); //false
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: isWait
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : const Text('Senin datalari geldi')),
      body: ListView.builder(
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
          return Card(child: Text((_items?[index].userId ?? 0).toString()));
        },
      ),
    );
  }
}
