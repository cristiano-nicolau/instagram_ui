import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ChatScreen extends StatefulWidget {
  final String contactName;
  final String lastMessage;

  ChatScreen({required this.contactName, required this.lastMessage});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.contactName),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                controller: _scrollController,
                children: [
                  buildMessage(isSent: false, message: 'Olá!', time: '10:00'),
                  buildMessage(isSent: true, message: 'Olá!', time: '10:01'),
                  buildMessage(
                      isSent: false, message: 'Tudo bem?', time: '10:02'),
                  buildMessage(
                      isSent: true, message: 'Sim, e contigo?', time: '10:03'),
                  buildMessage(
                      isSent: false, message: 'Tudo ótimo!', time: '10:04'),
                  buildMessage(
                      isSent: true, message: 'Que bom!', time: '10:05'),
                  buildMessage(isSent: false, message: 'Sim!', time: '10:06'),
                  buildMessage(
                      isSent: true, message: 'Até mais!', time: '10:07'),
                  buildMessage(
                      isSent: false, message: 'Até mais!', time: '10:07'),
                  buildMessage(
                      isSent: true, message: 'Um abraço', time: '10:07'),
                  buildMessage(
                      isSent: false,
                      message: widget.lastMessage,
                      time: '12:00'),
                ],
              ),
            ),
          ),
          // Caixa de texto para enviar mensagens
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.grey[200],
            ),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.camera_alt),
                  onPressed: () {
                    // Ação ao clicar no ícone da câmera
                    // Abre a câmera ou a galeria
                  },
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Escreva uma mensagem...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.mic),
                  onPressed: () {
                    // Ação ao clicar no ícone do microfone
                    // Inicia a gravação de áudio
                  },
                ),
                IconButton(
                  icon: Icon(Icons.photo),
                  onPressed: () {
                    // Ação ao clicar no ícone da galeria
                    // Abre a galeria para escolher uma imagem
                  },
                ),
                IconButton(
                  icon: Icon(Icons.emoji_emotions),
                  onPressed: () {
                    // Ação ao clicar no ícone de emojis/stickers
                    // Abre a lista de emojis/stickers
                  },
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    // Ação ao clicar no botão de enviar
                    // Enviar a mensagem
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildMessage(
    {required bool isSent, required String message, required String time}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 5.0),
    child: Row(
      mainAxisAlignment:
          isSent ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: isSent ? Colors.blue : const Color.fromARGB(255, 75, 74, 74),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 4.0),
              Text(
                time,
                style: TextStyle(fontSize: 12.0, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
