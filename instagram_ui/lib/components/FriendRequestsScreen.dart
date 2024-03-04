import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class FriendRequestsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Friend Requests'),
        ),
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onHorizontalDragUpdate: (details) {
            // Verificar a direção do movimento horizontal
            if (details.primaryDelta! < 0) {
              // Deslizando para a esquerda (para abrir a zona de mensagens, se necessário)
            } else if (details.primaryDelta! > 0) {
              // Deslizando da direita para a esquerda sai das mensagens e volta para a home
              Navigator.pop(context);
            }
          },
          child: ListView(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                  // Substitua a imagem abaixo pela imagem do remetente
                  backgroundImage: NetworkImage(
                      'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                ),
                title: Text('User 1'),
                subtitle: Text('Wants to follow you'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.check),
                      onPressed: () {
                        // Ação ao clicar no botão de aceitar
                        // Aceitar o pedido de amizade
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        // Ação ao clicar no botão de recusar
                        // Recusar o pedido de amizade
                      },
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                  // Substitua a imagem abaixo pela imagem do remetente
                  backgroundImage: NetworkImage(
                      'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                ),
                title: Text('User 2'),
                subtitle: Text('Wants to follow you'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.check),
                      onPressed: () {
                        // Ação ao clicar no botão de aceitar
                        // Aceitar o pedido de amizade
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        // Ação ao clicar no botão de recusar
                        // Recusar o pedido de amizade
                      },
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(
                      'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                ),
                title: Text('User 3'),
                subtitle: Text('Wants to follow you'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.check),
                      onPressed: () {
                        // Ação ao clicar no botão de aceitar
                        // Aceitar o pedido de amizade
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        // Ação ao clicar no botão de recusar
                        // Recusar o pedido de amizade
                      },
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(
                      'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                ),
                title: Text('User 4'),
                subtitle: Text('Wants to follow you'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.check),
                      onPressed: () {
                        // Ação ao clicar no botão de aceitar
                        // Aceitar o pedido de amizade
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        // Ação ao clicar no botão de recusar
                        // Recusar o pedido de amizade
                      },
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(
                      'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                ),
                title: Text('User 5'),
                subtitle: Text('Wants to follow you'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.check),
                      onPressed: () {
                        // Ação ao clicar no botão de aceitar
                        // Aceitar o pedido de amizade
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        // Ação ao clicar no botão de recusar
                        // Recusar o pedido de amizade
                      },
                    ),
                  ],
                ),
              ),

              // area de sugestoes para seguir
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Suggestions For You'),
              ),
              Divider(
                height: 1,
                color: Colors.grey,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(
                      'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                ),
                title: Text('User 15'),
                subtitle: Text('Suggested for you'),
                trailing: TextButton(
                  onPressed: () {
                    // Ação ao clicar no botão de seguir
                    // Seguir o usuário
                  },
                  child: Text('Follow'),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(
                      'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                ),
                title: Text('User 6'),
                subtitle: Text('Suggested for you'),
                trailing: TextButton(
                  onPressed: () {
                    // Ação ao clicar no botão de seguir
                    // Seguir o usuário
                  },
                  child: Text('Follow'),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(
                      'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                ),
                title: Text('User 7'),
                subtitle: Text('Suggested for you'),
                trailing: TextButton(
                  onPressed: () {
                    // Ação ao clicar no botão de seguir
                    // Seguir o usuário
                  },
                  child: Text('Follow'),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(
                      'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                ),
                title: Text('User 8'),
                subtitle: Text('Suggested for you'),
                trailing: TextButton(
                  onPressed: () {
                    // Ação ao clicar no botão de seguir
                    // Seguir o usuário
                  },
                  child: Text('Follow'),
                ),
              ),
            ],
          ),
        ));
  }
}
