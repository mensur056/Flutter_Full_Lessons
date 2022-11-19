import 'package:dio/dio.dart';
import 'package:first_group/second_section/Api/test_api/local_model.dart';
import 'package:flutter/material.dart';

class LocalPostDio extends StatefulWidget {
  const LocalPostDio({Key? key}) : super(key: key);

  @override
  State<LocalPostDio> createState() => _LocalPostDioState();
}

class _LocalPostDioState extends State<LocalPostDio> {
  Dio dio = Dio(BaseOptions(baseUrl: 'http://localhost:3000/'));
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController colorController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController idController = TextEditingController();
  Future<void> sendItemToLocalHost(UserModelRequest model) async {
    final response = await dio.post('users', data: model);
    if (response.statusCode == 200) {
      return response.data;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: nameController,
          ),
          TextField(controller: surnameController),
          TextField(controller: titleController),
          TextField(controller: colorController),
          TextField(controller: ageController),
          TextField(controller: idController),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
              onPressed: () {
                if (nameController.text.isNotEmpty &&
                    surnameController.text.isNotEmpty &&
                    titleController.text.isNotEmpty &&
                    colorController.text.isNotEmpty &&
                    ageController.text.isNotEmpty) {
                  final model = UserModelRequest(
                      id: int.tryParse(idController.text),
                      name: nameController.text,
                      surname: surnameController.text,
                      title: titleController.text,
                      color: colorController.text,
                      age: int.tryParse(ageController.text));
                  sendItemToLocalHost(model);
                }
              },
              child: const Text('Send'))
        ],
      ),
    );
  }
}
