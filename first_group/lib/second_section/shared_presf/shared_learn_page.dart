import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLearnPage extends StatefulWidget {
  const SharedLearnPage({super.key});

  @override
  State<SharedLearnPage> createState() => _SharedLearnPageState();
}

class _SharedLearnPageState extends State<SharedLearnPage> {
  String name = '';
  String surname = '';
  bool isData = false;
  @override
  void initState() {
    super.initState();
    readData();
    readMyBoolValue();
    print(isData);
  }

  void changeName(String val) {
    setState(() {
      name = val;
    });
  }

  void changeSurname(String val) {
    setState(() {
      surname = val;
    });
  }

  void changeColor(bool isRed) {
    setState(() {
      isData = isRed;
    });
  }

  Future<void> readData() async {
    final prefs = await SharedPreferences.getInstance();
    changeName(prefs.getString('username') ?? '');
    changeSurname(prefs.getString('surname') ?? '');
  }

  Future<void> readMyBoolValue() async {
    final presf = await SharedPreferences.getInstance();
    changeColor(presf.getBool('isTrue') ?? false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.save),
          onPressed: () async {},
        ),
        backgroundColor: isData == true ? Colors.red : Colors.green,
      ),
      body: Form(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      changeName(value);
                    },
                    decoration: const InputDecoration(hintText: 'Name'),
                  ),
                  TextFormField(
                    onChanged: (value) {
                      changeSurname(value);
                    },
                    decoration: const InputDecoration(hintText: 'Surname'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final prefs = await SharedPreferences.getInstance();
                      prefs.setString('username', name);
                    },
                    child: const Text('Save name'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final prefs = await SharedPreferences.getInstance();
                      prefs.setString('surname', surname);
                    },
                    child: const Text('Save surname'),
                  ),
                  ElevatedButton(
                    child: const Text('color'),
                    onPressed: () async {
                      setState(() {
                        isData = !isData;
                      });
                      final prefs = await SharedPreferences.getInstance();
                      prefs.setBool('isTrue', isData);
                      print(isData);
                    },
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(children: [Text(name), Text(surname)]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
