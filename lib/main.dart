import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:storezy/app_theme.dart';
import 'package:storezy/pages/add_followers.dart';
import 'package:storezy/pages/add_reviews.dart';
import 'package:storezy/pages/change_store_name.dart';
import 'package:storezy/pages/increment_followers.dart';
import 'package:storezy/pages/toggle_store.dart';
import 'package:storezy/services/storage_service.dart';
import 'package:storezy/widgets/home_two.dart';

import 'bindings/store_binding.dart';
import 'controllers/theme_controller.dart';
import 'home.dart';

void main() async {
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Storezy',
      theme: Themes.lightTheme,
      initialBinding: StoreBinding(),
      darkTheme: Themes.darkTheme,
      debugShowCheckedModeBanner: false,
      themeMode: themeController.theme,
      getPages: [
        GetPage(name: '/', page: () => Home()),
        GetPage(name: '/home2', page: () => Home2()),
        GetPage(name: '/changeStoreName', page: () => ChangeStoreName()),
        GetPage(name: '/addFollowers', page: () => AddFollowers()),
        GetPage(name: '/incrementFollowers', page: () => IncrementFollowers()),
        GetPage(name: '/toggleStore', page: () => ToggleStore()),
        GetPage(name: '/addReviews', page: () => AddReviews()),
      ],
      initialRoute: '/',
      home: Home(),
    );
  }
}
