import 'package:flutter/material.dart';

enum ImagePath { backgroundimage, tetsImage }

extension ImagePathExtension on ImagePath {
  String get toPath => 'assets/images/im_$name.jpg';

  Image get toImage => Image.asset(toPath);
}
