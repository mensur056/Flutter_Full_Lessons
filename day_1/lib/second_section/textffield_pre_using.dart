import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class TextFieldPreUsing extends StatefulWidget {
  const TextFieldPreUsing({Key? key}) : super(key: key);

  @override
  State<TextFieldPreUsing> createState() => _TextFieldPreUsingState();
}

class _TextFieldPreUsingState extends State<TextFieldPreUsing> {
//

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  int? myPassword = 0;
  String name = '';
  bool _isVisibility = false;
  @override
  void initState() {
    super.initState();
  }

  void changeVisibility() {
    setState(() {
      _isVisibility = !_isVisibility;
    });
  }

  void changeName() {
    setState(() {
      name = _emailController.text;
      myPassword = int.tryParse(_passwordController.text);
    });
    print('Change');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(
          height: context.mediaQuery.size.height * 0.1,
        ),
        Text(
          name.toString(),
          style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.green),
        ),
        Text(
          myPassword.toString(),
          style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.green),
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: context.mediaQuery.size.width * 0.1),
            child: TextField(
              controller: _emailController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'Email',
                labelText: 'email',
                hintStyle: TextStyle(color: Theme.of(context).backgroundColor),
              ),
            )),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: context.mediaQuery.size.width * 0.1),
            child: TextField(
              controller: _passwordController,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.phone,
              obscuringCharacter: '#',
              obscureText: _isVisibility ? true : false,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    changeVisibility();
                  },
                  icon: Icon(_isVisibility ? Icons.visibility_off_outlined : Icons.visibility_outlined),
                ),
                border: const OutlineInputBorder(),
                hintText: 'password',
                labelText: 'Password',
                hintStyle: TextStyle(color: Theme.of(context).backgroundColor),
              ),
            )),
        ElevatedButton(
            onPressed: () {
              changeName();
            },
            child: const Text('Change name'))
      ]),
    );
  }
}
