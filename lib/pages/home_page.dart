import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/images_data.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/pages/image_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuestra Galeria'),
        backgroundColor: Color.fromARGB(255, 64, 185, 255),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 150.0,
        padding: const EdgeInsets.all(5.0),
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        children: _imagesList,
      ),
    );
  }

  List<Widget> get _imagesList {
    List<Widget> _listImages = [];

    for (var image in images) {
      _listImages.add(GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ImagePage(url: image)));
          },
          child: Hero(
              tag: image, child: Image.network(image, fit: BoxFit.cover))));
    }

    return _listImages;
  }
}
