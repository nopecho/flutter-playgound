import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home!! main!!"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                onPressed: () => Get.toNamed("/chat"),
                child: const Text("go chat!"),
              ),
              OutlinedButton(
                onPressed: () => Get.toNamed("/login"),
                child: const Text("go login!!!"),
              ),
              OutlinedButton(
                onPressed: () => Get.toNamed("/signup"),
                child: const Text("go signdup!!!"),
              ),
            ],
          )
      ),
    );
  }
}
