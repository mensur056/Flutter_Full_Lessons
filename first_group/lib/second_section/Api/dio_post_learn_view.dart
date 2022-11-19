import 'package:dio/dio.dart';
import 'package:first_group/second_section/Api/general_dio.dart';
import 'package:first_group/second_section/Api/my_model.dart';
import 'package:flutter/material.dart';

class DioPostLearnView extends StatefulWidget {
  const DioPostLearnView({Key? key}) : super(key: key);

  @override
  State<DioPostLearnView> createState() => _DioPostLearnViewState();
}

class _DioPostLearnViewState extends State<DioPostLearnView> {
  MyApiService myApiService = GeneralDio();
  Dio dio = Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  String name = '';
  String surname = '';
  String age = '';
  String password = '';
  void changeUserInfo() {
    setState(() {
      name = nameController.text;
      surname = surnameController.text;
      age = ageController.text;
      password = passwordController.text;
    });
  }

//Basic using
  Future<void> sendItemToApi(UserModel model) async {
    final response = await dio.post('posts', data: model);
    if (response.statusCode == 200) {
      return response.data;
    }
  }

  Future<void> sendItemsToApi(UserModel model) async {
    myApiService.userLogin(model);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 200,
        title: Column(
          children: [
            Text(name),
            Text(surname),
            Text(age),
            Text(password),
          ],
        ),
      ),
      body: Column(children: [
        CustomTextField(
          hintText: 'Name',
          controller: nameController,
        ),
        CustomTextField(hintText: 'Surname', controller: surnameController),
        CustomTextField(hintText: 'Password', controller: passwordController),
        CustomTextField(hintText: 'Age', controller: ageController),
        ElevatedButton(
          onPressed: () {
            if (nameController.text.length > 5 &&
                surnameController.text.length > 5 &&
                passwordController.text.length > 5 &&
                int.parse(ageController.text) > 18) {
              changeUserInfo();
              final sendModel = UserModel(
                  name: nameController.text,
                  surname: surnameController.text,
                  password: int.tryParse(passwordController.text),
                  age: int.tryParse(ageController.text));
              sendItemsToApi(sendModel);
            }
          },
          child: const Text('Send'),
        )
      ]),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.controller,
  }) : super(key: key);
  final String hintText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(hintText: hintText),
    );
  }
}
