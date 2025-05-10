import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Text('Perfil'), centerTitle: true),
      body: Center(
        child: ProfileScreen(
          avatar: IconButton(
            iconSize: 150,
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              //TODO: call function to update profile picture
            },
          ),
          actions: [
            SignedOutAction((context) {
              Get.offNamed('/auth');
            }),
          ],
        ),
      ),
    );
  }
}
