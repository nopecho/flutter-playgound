import 'package:flutter/material.dart';
import 'package:flutter_playgound/ui/pages/chat/index.dart';
import 'package:flutter_playgound/ui/pages/home/index.dart';
import 'package:flutter_playgound/ui/pages/login/index.dart';
import 'package:flutter_playgound/ui/pages/signup/index.dart';
import 'package:get/get.dart';
import 'package:flutter_playgound/config/app_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await setupAppConfig();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "nopecho flutter playground",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/login', page: () => const LoginPage()),
        GetPage(name: '/signup', page: () => const SingUpPage()),
        GetPage(name: '/chat', page: () => const ChatPage()),
      ],
    );
  }
}