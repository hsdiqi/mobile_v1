import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mod_1/app/routes/app_pages.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
  
}