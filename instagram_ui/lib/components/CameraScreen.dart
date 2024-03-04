import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onHorizontalDragUpdate: (details) {
          // Verificar a direção do movimento horizontal
          if (details.primaryDelta! < 0) {
            // Deslizando para a esquerda (pode adicionar lógica adicional se necessário)
            Navigator.pop(context);
          } else if (details.primaryDelta! > 0) {
            // Deslizando da direita para a esquerda sai das mensagens e volta para a home
          }
        },
        child: Container(
          color: Colors.grey,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20), // Defina o espaçamento desejado
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.flash_off, color: Colors.white),
                      onPressed: () {
                        // Ação ao clicar no botão de flash
                        // Ativar/desativar o flash
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.settings, color: Colors.white),
                      onPressed: () {
                        // Ação ao clicar no botão de definições
                        // Abrir as definições da câmera
                      },
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon:
                          const Icon(Icons.photo_library, color: Colors.white),
                      onPressed: () {
                        // Ação ao clicar no botão de galeria
                        // Abrir a galeria
                      },
                    ),
                    SizedBox(width: 20), // Espaço entre os ícones e a lista
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: modosDeCaptura.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: ElevatedButton(
                              onPressed: () {
                                // Ação ao selecionar um modo de captura
                                print(modosDeCaptura[index]);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                onPrimary: Colors.white,
                              ),
                              child: Text(modosDeCaptura[index]),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                        width:
                            20), // Espaço entre a lista e o ícone de rotação da câmera
                    IconButton(
                      icon: const Icon(Icons.rotate_right, color: Colors.white),
                      onPressed: () {
                        // Ação ao clicar no botão de rotação da câmera
                        // Rotacionar a câmera
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter + const Alignment(0.10, -0.15),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 2),
          ),
          child: IconButton(
            icon: const Icon(Icons.circle, color: Colors.white, size: 40),
            onPressed: () {
              // Ação ao clicar no botão de tirar foto
              // Adicionar lógica para tirar foto
            },
          ),
        ),
      ),
    );
  }
}

// Lista de modos de captura
List<String> modosDeCaptura = [
  'Pubication',
  'Story',
  'Reels',
  'Live',
  // Adicione mais modos conforme necessário
];
