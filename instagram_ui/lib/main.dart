import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram UI',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserAdd(),
    UserReels(),
    UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_rounded),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

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

class NotificationsScreen extends StatelessWidget {
  void showFriendRequests(BuildContext context) {
    // abre uma nova pagina de pedidos de amizade
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FriendRequestsScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Notifications'),
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
              // secçao com os pedidos de amizade do insta é um container que ao clicar abre pop up com os pedidos de amizade para aceitar ou nao
              ListTile(
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                          'https://w0.peakpx.com/wallpaper/979/89/HD-wallpaper-purple-smile-design-eye-smily-profile-pic-face-thumbnail.jpg'),
                    ),
                    Positioned(
                      right: -15,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(
                            'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                      ),
                    ),
                  ],
                ),
                title: Text('Friend Requests'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
// Espaço entre o ícone e a bola vermelha
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward_ios_outlined),
                  ],
                ),
                onTap: () {
                  // Ao clicar, exibir os pedidos de amizade
                  showFriendRequests(context);
                },
              ),

              Padding(
                padding: EdgeInsets.all(8),
                child: Text('Today'),
              ),

              Divider(
                height: 1,
                color: Colors.grey,
              ),

              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                  // Substitua a imagem abaixo pela imagem do remetente
                  backgroundImage: NetworkImage(
                      'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                ),
                title: Text('User 1'),
                subtitle: Text('Liked your post'),
                trailing: Icon(Icons.favorite),
              ),
              // secçao ontem
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Yesterday'),
              ),
              Divider(
                height: 1,
                color: Colors.grey,
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
                subtitle: Text('Commented on your post'),
                trailing: Icon(Icons.mode_comment_outlined),
              ),
              // adiciona secçao a dizer na ultima semana
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Last Week'),
              ),
              Divider(
                height: 1,
                color: Colors.grey,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                  // Substitua a imagem abaixo pela imagem do remetente
                  backgroundImage: NetworkImage(
                      'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                ),
                title: Text('User 3'),
                subtitle: Text('Mentioned you in a comment'),
                trailing: Icon(Icons.mode_comment_outlined),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                  // Substitua a imagem abaixo pela imagem do remetente
                  backgroundImage: NetworkImage(
                      'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                ),
                title: Text('User 4'),
                subtitle: Text('Liked your post'),
                trailing: Icon(Icons.favorite),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                  // Substitua a imagem abaixo pela imagem do remetente
                  backgroundImage: NetworkImage(
                      'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                ),
                title: Text('User 5'),
                subtitle: Text('Liked your post'),
                trailing: Icon(Icons.favorite),
              ),
              // adiciona secçao a dizer no ultimo mes
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Last Month'),
              ),
              Divider(
                height: 1,
                color: Colors.grey,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                  // Substitua a imagem abaixo pela imagem do remetente
                  backgroundImage: NetworkImage(
                      'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                ),
                title: Text('User 6'),
                subtitle: Text('Liked your post'),
                trailing: Icon(Icons.favorite),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                  // Substitua a imagem abaixo pela imagem do remetente
                  backgroundImage: NetworkImage(
                      'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                ),
                title: Text('User 7'),
                subtitle: Text('Liked your post'),
                trailing: Icon(Icons.favorite),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                  // Substitua a imagem abaixo pela imagem do remetente
                  backgroundImage: NetworkImage(
                      'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                ),
                title: Text('User 8'),
                subtitle: Text('Liked your post'),
                trailing: Icon(Icons.favorite),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                  // Substitua a imagem abaixo pela imagem do remetente
                  backgroundImage: NetworkImage(
                      'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                ),
                title: Text('User 9'),
                subtitle: Text('Liked your post'),
                trailing: Icon(Icons.favorite),
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                  // Substitua a imagem abaixo pela imagem do remetente
                  backgroundImage: NetworkImage(
                      'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
                ),
                title: Text('User 10'),
                subtitle: Text('Liked your post'),
                trailing: Icon(Icons.favorite),
              ),
            ],
          ),
        ));
  }
}

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

// Widget para a secçao de tirar foto ou adicionar foto do instagram
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
                        // Ação ao clicar no botão de fechar
                        // Fechar a câmera
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

// Exemplo de tela de chat
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

class UserSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.grey),
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              filled: true,
              fillColor: Colors.grey[300],
              contentPadding: EdgeInsets.all(8),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(30, (index) {
            return Container(
              height: 100,
              width: 100,
              color: Colors.deepOrange[200],
              margin: EdgeInsets.all(4),
            );
          }),
        ));
  }
}

// quero a interface grafica da parte de adicionar uma nova publicaçao do instagram
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

class UserReels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black, // Cor de fundo do vídeo ou imagem
            child: Center(
              child: Text(
                'Reels Content',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Cabeçalho (Texto "Reels", Ícones de Som e Câmera)
          Positioned(
            top: 30.0,
            left: 16.0,
            right: 16.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Reels',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.volume_up,
                      color: Colors.white,
                      size: 28.0,
                    ),
                    SizedBox(width: 16.0),
                    Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                      size: 28.0,
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Rodapé (Ícones de Like, Comentário, Três Pontos e Informações do Usuário)
          Positioned(
            bottom: 16.0,
            left: 16.0,
            right: 16.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                              size: 28.0,
                            ),
                            SizedBox(width: 8.0),
                            Text(
                              '100', // Replace with the actual number of likes
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Column(
                          children: [
                            Icon(
                              Icons.mode_comment_outlined,
                              color: Colors.white,
                              size: 28.0,
                            ),
                            SizedBox(width: 8.0),
                            Text(
                              '50', // Replace with the actual number of comments
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Column(
                          children: [
                            Icon(
                              Icons.share,
                              color: Colors.white,
                              size: 28.0,
                            ),
                            SizedBox(width: 8.0),
                            Text(
                              '20', // Replace with the actual number of shares
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://a.storyblok.com/f/191576/1200x800/a3640fdc4c/profile_picture_maker_before.webp'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      'User 1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                      size: 28.0,
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Text(
                      'adoro jogar a bola by Ronaldo ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: [
              SizedBox(width: 10),
              Text('User 1', style: TextStyle(color: Colors.black)),
              Icon(Icons.arrow_drop_down, color: Colors.black),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.add_box_outlined),
              onPressed: () {},
            ),
            PopupMenuButton(
              icon: Icon(Icons.menu), // Ícone personalizado para o botão
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  value: 'configuracoes',
                  child: Row(
                    children: [
                      Icon(Icons.settings),
                      SizedBox(width: 8.0),
                      Text('Settings and Privacy'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'atividade',
                  child: Row(
                    children: [
                      Icon(Icons.auto_graph_rounded),
                      SizedBox(width: 8.0),
                      Text('Your Activity'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'arquivo',
                  child: Row(
                    children: [
                      Icon(Icons.archive),
                      SizedBox(width: 8.0),
                      Text('Archive'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'qrcode',
                  child: Row(
                    children: [
                      Icon(Icons.qr_code),
                      SizedBox(width: 8.0),
                      Text('QR Code'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'salvo',
                  child: Row(
                    children: [
                      Icon(Icons.bookmark_border),
                      SizedBox(width: 8.0),
                      Text('Saved'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'supervisao',
                  child: Row(
                    children: [
                      Icon(Icons.supervised_user_circle),
                      SizedBox(width: 8.0),
                      Text('Close Friends'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'encomendasepagamentos',
                  child: Row(
                    children: [
                      Icon(Icons.family_restroom_rounded),
                      SizedBox(width: 8.0),
                      Text('Supervision'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'verificacaometa',
                  child: Row(
                    children: [
                      Icon(Icons.verified),
                      SizedBox(width: 8.0),
                      Text('Verified'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'supervisao',
                  child: Row(
                    children: [
                      Icon(Icons.supervised_user_circle),
                      SizedBox(width: 8.0),
                      Text('Close Friends'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'sair',
                  child: Row(
                    children: [
                      Icon(Icons.exit_to_app),
                      SizedBox(width: 8.0),
                      Text('Logout'),
                    ],
                  ),
                  // ao clicar vai para a tela de login
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                ),
              ],
              onSelected: (value) {},
            ),
          ],
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://a.storyblok.com/f/191576/1200x800/a3640fdc4c/profile_picture_maker_before.webp'),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
                Spacer(),
                SizedBox(width: 20),
                Column(
                  children: [
                    Text('10', style: TextStyle(fontSize: 20)),
                    Text('Posts'),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Text('100', style: TextStyle(fontSize: 20)),
                    Text('Followers'),
                  ],
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Text('200', style: TextStyle(fontSize: 20)),
                    Text('Following'),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
                'Live your life to the fullest, and focus on the positive.' +
                    ' - Matt Cameron'),
          ),

          // Add butons profile instagram to edit profile, share, and discover persons
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              children: [
                SizedBox(width: 2),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(BorderSide(
                          color: Colors.black)), // Definir borda preta
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    child: Text('Edit', style: TextStyle(color: Colors.black)),
                  ),
                ),
                SizedBox(width: 2),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(BorderSide(
                          color: Colors.black)), // Definir borda preta
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    child: Text('Share', style: TextStyle(color: Colors.black)),
                  ),
                ),
                SizedBox(width: 2),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(BorderSide(
                        color: Colors.black,
                      )), // Definir borda preta
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    child: Icon(Icons.person_add, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),

          // add a text - "Stories Highlights" com uma stea para baixo para ver mais e ao clicar abre o que eu colcoar a seguir

          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey[300]),
                      child: Icon(Icons.add, color: Colors.black),
                    ),
                    Text('New'),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey[400]),
                    ),
                    Text('Europe Trip'),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey[400]),
                    ),
                    Text('Friends'),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.grey[400]),
                    ),
                    Text('Family'),
                  ],
                ),
              ],
            ),
          ),

          // add a line to separate the stories from the posts
          Divider(
            color: Colors.black,
            thickness: 0.5,
          ),

          // create 3 buttons with icons posts, igtv and tagged, with not text, atraves de tabbar
          DefaultTabController(
            length: 3,
            child: Column(
              children: [
                // Parte superior da tela com as abas
                TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.grid_on)),
                    Tab(icon: Icon(Icons.live_tv)),
                    Tab(icon: Icon(Icons.person_pin)),
                  ],
                ),

                // Parte inferior da tela com as visualizações de cada aba
                Container(
                  height: 500,
                  child: TabBarView(
                    children: [
                      // Grade de imagens para a primeira aba
                      GridView.count(
                        crossAxisCount: 3,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: List.generate(10, (index) {
                          return Container(
                            height: 100,
                            width: 100,
                            color: Colors.deepOrange[200],
                            margin: EdgeInsets.all(4),
                          );
                        }),
                      ),

                      // list de vídeos estilo "reels" para a segunda aba (retângulos), com 3X3 vídeos quero altura maior que largura
                      GridView.count(
                        crossAxisCount: 3,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: List.generate(9, (index) {
                          return Container(
                            height: 100,
                            width: 100,
                            color: Colors.lightGreen[200],
                            margin: EdgeInsets.all(4),
                          );
                        }),
                      ),

                      // Grade de imagens para a terceira aba
                      GridView.count(
                        crossAxisCount: 3,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: List.generate(7, (index) {
                          return Container(
                            height: 100,
                            width: 100,
                            color: Colors.lightBlue[200],
                            margin: EdgeInsets.all(4),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Ação ao clicar no botão de login
                // Verificar as credenciais e fazer login
                // Se as credenciais estiverem corretas, navegue para a tela de perfil
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserProfile()),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class UserPosts extends StatelessWidget {
  final String name;

  UserPosts({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://w0.peakpx.com/wallpaper/979/89/HD-wallpaper-purple-smile-design-eye-smily-profile-pic-face-thumbnail.jpg'),
                      fit: BoxFit.cover)),
            ),
            SizedBox(width: 10),
            Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
            Spacer(),
            IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {},
            ),
          ],
        ),
      ),
      Container(
        height: 300,
        color: Colors.grey[400],
      ),
      Row(
        children: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.mode_comment_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.send_rounded),
            onPressed: () {},
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.bookmark_border),
            onPressed: () {},
          ),
        ],
      ),
      Row(
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                children: [
                  Text('Liked by '),
                  Text('User 1', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(" and "),
                  Text('others', style: TextStyle(fontWeight: FontWeight.bold))
                ],
              )),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 1.0),
        child: RichText(
          text: TextSpan(
            style: DefaultTextStyle.of(context).style,
            children: [
              TextSpan(
                text: name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    ' My first post! #instagram #HelloWorld #Life #Love #Peace #Joy',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
