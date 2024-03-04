import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

import '../components/Reels.dart';

class UserReels extends StatelessWidget {
  final List<Reels> reelsList = [
    Reels('User 1', 'Comments 1 2 3 ola adeus',
        'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
    Reels('User 2', 'Comments 2',
        'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
    Reels('User 3', 'Comments 3 o cruzz é linde',
        'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
    Reels('User 4', 'o gonçale é feio igihihih',
        'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
    Reels('User 5', 'ronaldo melhor do miundo',
        'https://www.pngkey.com/png/full/114-1149878_notification-icon-png.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical, // Altera para rolagem vertical
        itemCount: reelsList.length,
        itemBuilder: (context, index) {
          return reelsList[index];
        },
      ),
    );
  }
}
