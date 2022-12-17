import 'package:first_group/second_section/alert_learn.dart';
import 'package:first_group/second_section/vexana/vexana_mode.dart';
import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';
import 'package:kartal/kartal.dart';

class VexanaLearnPage extends StatefulWidget {
  const VexanaLearnPage({super.key});

  @override
  State<VexanaLearnPage> createState() => _VexanaLearnPageState();
}

class _VexanaLearnPageState extends State<VexanaLearnPage> {
  late final INetworkManager networkManager;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> globalKey = GlobalKey();
  @override
  void initState() {
    super.initState();
    networkManager = NetworkManager<INetworkModel<VexanaModel>>(
      options: BaseOptions(baseUrl: 'https://restapi-843b0-default-rtdb.firebaseio.com/'),
      noNetwork: NoNetwork(context),
    );
  }

  Future<List<VexanaModel>?> sendUserInfo(VexanaModel model) async {
    final response = await networkManager.send<VexanaModel, List<VexanaModel>>(
      'vexana.json',
      parseModel: VexanaModel(),
      method: RequestType.POST,
      data: model,
    );

    return response.data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        autovalidateMode: AutovalidateMode.always,
        key: globalKey,
        child: Column(
          children: [
            CustomUserLoginField(
                controller: emailController, validate: (value) => value.isValidEmail ? null : 'Bir gmail hesabi yazin'),
            CustomUserLoginField(
              textAction: TextInputAction.done,
              controller: passwordController,
              validate: (value) => value.isValidPassword ? null : 'Parolunuzu daxil edin',
            ),
            ElevatedButton(
              onPressed: () {
                if (globalKey.currentState?.validate() ?? false) {
                  final model = VexanaModel(email: emailController.text, password: passwordController.text);
                  sendUserInfo(model);
                  context.navigateToPage(const AlertLearn());
                }
              },
              child: const Text('Login In'),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomUserLoginField extends StatelessWidget {
  const CustomUserLoginField({
    Key? key,
    required this.controller,
    required this.validate,
    this.textAction = TextInputAction.next,
  }) : super(key: key);
  final TextEditingController controller;
  final String? Function(String?) validate;
  final TextInputAction textAction;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        textInputAction: textAction,
        controller: controller,
        validator: validate,
      ),
    );
  }
}
