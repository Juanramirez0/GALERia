import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  final String url;
  const ImagePage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 241, 172, 172),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                )),
            Hero(tag: url, child: Image.network(url)),
            const Divider()
          ],
        ),
      ),
    );
  }
}
