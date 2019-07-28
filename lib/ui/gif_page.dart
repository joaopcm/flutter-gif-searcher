import 'package:flutter/material.dart';

import 'package:share/share.dart';

class GifPage extends StatelessWidget {

  final Map _gifData;

  GifPage(this._gifData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_gifData["title"]),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              Share.share("Ei! Veja este GIF que encontrei no meu aplicativo feito com Flutter: ${_gifData['images']['fixed_height']['url']}");
            },
          )
        ],
      ),
      backgroundColor: Colors.white12,
      body: Center(
        child: Image.network(_gifData["images"]["fixed_height"]["url"]),
      )
    );
  }
}
