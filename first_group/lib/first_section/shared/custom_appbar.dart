import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.icon,
    this.title,
  }) : super(key: key);
  final Icon icon;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppBar(
        title: Text(title ?? ''),
        leading: icon,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(104);
}
