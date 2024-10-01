import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mod_1/app/routes/app_pages.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'selamat datang di aplikasi saya!', 
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: (){
                Get.toNamed(Routes.LOGIN);
              }, child: Text('Login')),
              SizedBox(height: 10),
              ElevatedButton(onPressed: (){
                Get.to(Routes.SIGNUP);
              }, child: Text('SignUp')),
          ],
        ),
      ),
    );
  }
  
}