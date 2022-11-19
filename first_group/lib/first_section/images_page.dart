import 'package:flutter/material.dart';

class ImagesPageLearn extends StatelessWidget {
  const ImagesPageLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: const [
          MyImageAssets(imagePath: 'assets/images/tetsImage.png'),
          MyImageAssets(imagePath: 'assets/images/tetsImage.png'),
          MyImageAssets(imagePath: 'assets/images/tets123.jpg'),

          // Image.network(
          //     'https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fbackgrounds&psig=AOvVaw3qJLk3RwBknCW1ZqUk1uWA&ust=1663962470178000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCIiO8rGVqfoCFQAAAAAdAAAAABAH')
        ],
      ),
    );
  }
}

class MyImageAssets extends StatelessWidget {
  const MyImageAssets({
    Key? key,
    required this.imagePath,
  }) : super(key: key);
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: MediaQuery.of(context).size.width * 0.5,
      fit: BoxFit.fill,
      // color: Theme.of(context).errorColor,
    );
  }
}
