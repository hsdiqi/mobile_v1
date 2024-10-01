// main.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mod_1/presentation/pages/profile.dart';
import 'package:mod_1/presentation/pages/signup.dart';
import '../controllers/login_controller.dart';

class Login extends StatelessWidget {
  final LoginController _controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Silahkan login menggunakan akun anda',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) => _controller.username.value = value,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) => _controller.password.value = value,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
            ),
            ElevatedButton(
              onPressed: _controller.login,
              child: Text('Login'),
              
              // Get.to(ProfileScreen());
            ),
            TextButton(
              onPressed: (){
                Get.to(Signup());
              },
              child: Text('Don\'t have an account? Sign up here'),
            )
          ],
        ),
      ),
    );
  }
}
