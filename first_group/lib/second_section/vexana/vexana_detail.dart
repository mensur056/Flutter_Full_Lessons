import 'package:first_group/second_section/vexana/vexana_mode.dart';
import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';

class VexanaDetailPage extends StatefulWidget {
  const VexanaDetailPage({super.key});

  @override
  State<VexanaDetailPage> createState() => _VexanaDetailPageState();
}

class _VexanaDetailPageState extends State<VexanaDetailPage> {
  List<VexanaModel>? items;
  late final INetworkManager networkManager;

  Future<void> sendUserInfo() async {
    final response = await networkManager.send<VexanaModel, Map<dynamic, dynamic>>(
      'vexana.json',
      parseModel: VexanaModel(),
      method: RequestType.GET,
    );
    // final jsonModel = VexanaModel.fromJson(response.data ?? {});
    // VexanaList.fromJsonList(jsonModel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) => const Card(
          child: ListTile(title: Text('email')),
        ),
      ),
    );
  }
}
