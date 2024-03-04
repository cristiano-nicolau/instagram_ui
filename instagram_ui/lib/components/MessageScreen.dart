import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

import 'ChatScreen.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User 1'),
        actions: [
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.message_rounded),
            onPressed: () {
              // Ação ao clicar no ícone de mensagens
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Barra de pesquisa
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 50, // Adjust the height value as desired
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Pesquisar',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          // Secção de Notificações
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // Adiciona um espaço em branco

                buildUserWithNote(
                  'https://a.storyblok.com/f/191576/1200x800/a3640fdc4c/profile_picture_maker_before.webp',
                  'Your Note',
                  'Note...',
                ),
                buildUserWithNote(
                  'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png',
                  'User 1',
                  'Note 1',
                ),
                buildUserWithNote(
                  'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png',
                  'User 2',
                  'Note 2',
                ),
                buildUserWithNote(
                  'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png',
                  'User 3',
                  'Note 3',
                ),
                buildUserWithNote(
                  'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png',
                  'User 2',
                  'Note 2',
                ),
                buildUserWithNote(
                  'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png',
                  'User 3',
                  'Note 3',
                ),
                buildUserWithNote(
                  'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png',
                  'User 2',
                  'Note 2',
                ),
                buildUserWithNote(
                  'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png',
                  'User 3',
                  'Note 3',
                ),
              ],
            ),
          ),

          // Lista de Mensagens
          Expanded(
            child: GestureDetector(
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
                  // Exemplo de item da lista de mensagens
                  ListTile(
                    onTap: () {
                      // Ação ao clicar na mensagem
                      // Abra o chat com a pessoa correspondente
                      openChatScreen(
                          context, 'User 2', "Última mensagem aqui...");
                    },
                    leading: CircleAvatar(
                      // Imagem do remetente
                      radius: 25,
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                          'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                    ),
                    title: Text('User 2'),
                    subtitle: Text('Última mensagem aqui...'),
                  ),
                  ListTile(
                    onTap: () {
                      // Ação ao clicar na mensagem
                      // Abra o chat com a pessoa correspondente
                      openChatScreen(context, 'User 3',
                          "Adorei o jantar temos de repetir");
                    },
                    leading: CircleAvatar(
                      // Imagem do remetente
                      radius: 25,
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                          'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                    ),
                    title: Text('User 3'),
                    subtitle: Text('Adorei o jantar temos de repetir'),
                  ),
                  ListTile(
                    onTap: () {
                      // Ação ao clicar na mensagem
                      // Abra o chat com a pessoa correspondente
                      openChatScreen(context, 'User 4', "Bota ao tasco hoje?");
                    },
                    leading: CircleAvatar(
                      // Imagem do remetente
                      radius: 25,
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                          'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                    ),
                    title: Text('User 4'),
                    subtitle: Text('Bota ao tasco hoje?'),
                  ),
                  ListTile(
                    onTap: () {
                      // Ação ao clicar na mensagem
                      // Abra o chat com a pessoa correspondente
                      openChatScreen(context, 'User 5',
                          "Temos teste de ICM amanha não é?");
                    },
                    leading: CircleAvatar(
                      // Imagem do remetente
                      radius: 25,
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                          'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                    ),
                    title: Text('User 5'),
                    subtitle: Text('Temos teste de ICM amanha não é?'),
                  ),
                  ListTile(
                    onTap: () {
                      // Ação ao clicar na mensagem
                      // Abra o chat com a pessoa correspondente
                      openChatScreen(context, 'User 6', "Sauadades de ti");
                    },
                    leading: CircleAvatar(
                      // Imagem do remetente
                      radius: 25,
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                          'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                    ),
                    title: Text('User 6'),
                    subtitle: Text('Sauadades de ti'),
                  ),
                  ListTile(
                    onTap: () {
                      // Ação ao clicar na mensagem
                      // Abra o chat com a pessoa correspondente
                      openChatScreen(
                          context, 'User 7', "Última mensagem aqui...");
                    },
                    leading: CircleAvatar(
                      // Imagem do remetente
                      radius: 25,
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                          'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                    ),
                    title: Text('User 7'),
                    subtitle: Text('Última mensagem aqui...'),
                  ),
                  ListTile(
                    onTap: () {
                      // Ação ao clicar na mensagem
                      // Abra o chat com a pessoa correspondente
                      openChatScreen(context, 'User 8',
                          "Adorei o jantar temos de repetir");
                    },
                    leading: CircleAvatar(
                      // Imagem do remetente
                      radius: 25,
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                          'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                    ),
                    title: Text('User 8'),
                    subtitle: Text('Adorei o jantar temos de repetir'),
                  ),
                  ListTile(
                    onTap: () {
                      // Ação ao clicar na mensagem
                      // Abra o chat com a pessoa correspondente
                      openChatScreen(context, 'User 9', "Bota ao tasco hoje?");
                    },
                    leading: CircleAvatar(
                      // Imagem do remetente
                      radius: 25,
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                          'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                    ),
                    title: Text('User 9'),
                    subtitle: Text('Bota ao tasco hoje?'),
                  ),
                  ListTile(
                    onTap: () {
                      // Ação ao clicar na mensagem
                      // Abra o chat com a pessoa correspondente
                      openChatScreen(context, 'User 10',
                          "Temos teste de ICM amanha não é?");
                    },
                    leading: CircleAvatar(
                      // Imagem do remetente
                      radius: 25,
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                          'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                    ),
                    title: Text('User 10'),
                    subtitle: Text('Temos teste de ICM amanha não é?'),
                  ),
                  ListTile(
                    onTap: () {
                      // Ação ao clicar na mensagem
                      // Abra o chat com a pessoa correspondente
                      openChatScreen(context, 'User 11', "Sauadades de ti");
                    },
                    leading: CircleAvatar(
                      // Imagem do remetente
                      radius: 25,
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                          'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                    ),
                    title: Text('User 11'),
                    subtitle: Text('Sauadades de ti'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  // Função para abrir o chat com a pessoa correspondente
  void openChatScreen(
      BuildContext context, String contactName, String lastMessage) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => GestureDetector(
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
            child:
                ChatScreen(contactName: contactName, lastMessage: lastMessage),
          ),
        ));
  }
}

Widget buildUserWithNote(String imageUrl, String userName, String note) {
  return Padding(
    padding:
        const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0, bottom: 10.0),
    child: Column(
      children: [
        Stack(
          children: [
            // Imagem do usuário
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Balão de nota
            Container(
              height: 30,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            // Texto da nota
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  note,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Text(userName),
      ],
    ),
  );
}
