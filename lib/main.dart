import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'app/routes/app_routes.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  await Hive.openBox('submissions');
  await GetStorage.init();

  final box = GetStorage();
  bool isLogin = box.read("is_login") ?? false;

  runApp(MyApp(isLogin));
}

class MyApp extends StatelessWidget {

  final bool isLogin;

  const MyApp(this.isLogin,{super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: isLogin ? Routes.home : Routes.login,
      getPages: AppRoutes.pages,
    );
  }
}