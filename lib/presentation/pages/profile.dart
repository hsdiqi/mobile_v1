import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:io';
import '../controllers/profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  final ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Profile'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white),
            onPressed: () {
              // Settings action
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile image and username
            GestureDetector(
              onTap: () {
                controller.pickImage();  // Trigger image picking
              },
              child: Obx(() {
                return CircleAvatar(
                  radius: 50,
                  backgroundImage: controller.profileImagePath.value.isEmpty
                      ? AssetImage('assets/profile_picture.png')  // Default image
                      : FileImage(File(controller.profileImagePath.value)) as ImageProvider,
                );
              }),
            ),
            SizedBox(height: 8),
            Text(
              'Augmunted hum...',
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              '@AndikaSalsabilah',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            SizedBox(height: 16),

            // Coins and followers
            Obx(() {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        '${controller.coins.value}',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        'Coins',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(width: 40),
                  Column(
                    children: [
                      Text(
                        '${controller.followers.value}',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              );
            }),
            SizedBox(height: 20),

            // Buttons for lists and followers
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      '2',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      'Reading Lists',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(width: 40),
                Column(
                  children: [
                    Text(
                      '0',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),

            // Story card
            Expanded(
              child: ListView(
                children: [
                  Card(
                    color: Colors.grey[900],
                    child: ListTile(
                      leading: Icon(Icons.book, color: Colors.white),
                      title: Text(
                        'Darksiders concept',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text('0 Published Stories', style: TextStyle(color: Colors.grey)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
