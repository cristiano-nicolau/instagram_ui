import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

import '../components/UserPosts.dart';
import '../components/MessageScreen.dart';
import '../components/CameraScreen.dart';
import '../components/NotificationsScreen.dart';

class UserHome extends StatelessWidget {
  // Function to open the messages zone
  void openMessagesZone(BuildContext context) {
    // Implement your logic to open the messages zone here
    // For example, you can use Navigator to navigate to the messages screen
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MessagesScreen(),
      ),
    );
  }

  // Function to open the camera zone
  void openCameraZone(BuildContext context) {
    // Implement your logic to open the camera zone here
    // For example, you can use Navigator to navigate to the camera screen
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CameraScreen(),
      ),
    );
  }

  void openNotifications(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NotificationsScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text('Instagram'),
          actions: [
            IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {
                openNotifications(context);
              },
            ),
            IconButton(
              icon: Icon(Icons.send_rounded),
              onPressed: () {
                // Call the function to open messages zone
                openMessagesZone(context);
              },
            ),
          ],
        ),
        body: Column(children: [
          // STORIES
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://a.storyblok.com/f/191576/1200x800/a3640fdc4c/profile_picture_maker_before.webp'),
                                  fit: BoxFit.cover))),
                      SizedBox(height: 10),
                      Text('Your Story'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://w0.peakpx.com/wallpaper/979/89/HD-wallpaper-purple-smile-design-eye-smily-profile-pic-face-thumbnail.jpg'),
                                  fit: BoxFit.cover))),
                      SizedBox(height: 10),
                      Text('User 1'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://w0.peakpx.com/wallpaper/979/89/HD-wallpaper-purple-smile-design-eye-smily-profile-pic-face-thumbnail.jpg'),
                                  fit: BoxFit.cover))),
                      SizedBox(height: 10),
                      Text('User 2'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://w0.peakpx.com/wallpaper/979/89/HD-wallpaper-purple-smile-design-eye-smily-profile-pic-face-thumbnail.jpg'),
                                  fit: BoxFit.cover))),
                      SizedBox(height: 10),
                      Text('User 3'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://w0.peakpx.com/wallpaper/979/89/HD-wallpaper-purple-smile-design-eye-smily-profile-pic-face-thumbnail.jpg'),
                                  fit: BoxFit.cover))),
                      SizedBox(height: 10),
                      Text('User 4'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://w0.peakpx.com/wallpaper/979/89/HD-wallpaper-purple-smile-design-eye-smily-profile-pic-face-thumbnail.jpg'),
                                  fit: BoxFit.cover))),
                      SizedBox(height: 10),
                      Text('User 5'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://w0.peakpx.com/wallpaper/979/89/HD-wallpaper-purple-smile-design-eye-smily-profile-pic-face-thumbnail.jpg'),
                                  fit: BoxFit.cover))),
                      SizedBox(height: 10),
                      Text('User 6'),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onHorizontalDragUpdate: (details) {
                // Verificar a direção do movimento horizontal
                if (details.primaryDelta! < 0) {
                  // Deslizando para a esquerda (para abrir a zona de mensagens, se necessário)
                  // Você pode ajustar este limite conforme necessário
                  if (details.primaryDelta! < -1) {
                    // Chame a função para abrir a zona de mensagens
                    openMessagesZone(context);
                  }
                } else if (details.primaryDelta! > 0) {
                  // Deslizando para a direita (pode adicionar lógica adicional se necessário)
                  openCameraZone(context);
                }
              },
              child: ListView(
                children: [
                  UserPosts(name: 'User 1'),
                  UserPosts(name: 'User 2'),
                  UserPosts(name: 'User 3'),
                  UserPosts(name: 'User 4'),
                  UserPosts(name: 'User 5'),
                ],
              ),
            ),
          )
        ]));
  }
}
