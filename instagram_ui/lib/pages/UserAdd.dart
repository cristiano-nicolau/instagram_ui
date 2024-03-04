import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class UserAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Post'),
        actions: [
          TextButton(
            onPressed: () {
              // Ação ao clicar no botão de publicar
              // Publicar a nova publicação
            },
            child: Text('Publish'),
          ),
        ],
      ),
      body: Column(
        children: [
          // Área para adicionar a imagem ou o vídeo
          Container(
            height: 200,
            color: Colors.grey[300],
            child: Center(
              child: Icon(Icons.add, size: 50, color: Colors.grey),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Last',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Spacer(),
                Icon(Icons.camera_alt),
              ],
            ),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          // grid de fotos , a cinzento
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(30, (index) {
                return Container(
                  height: 100,
                  width: 100,
                  color: Colors.grey[300],
                  margin: EdgeInsets.all(4),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
