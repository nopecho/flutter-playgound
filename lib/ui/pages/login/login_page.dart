import 'package:flutter_playgound/domain/auth/models/login.dart';
import 'package:flutter_playgound/domain/auth/models/login_method.dart';

import 'package:flutter/material.dart';
import 'package:flutter_playgound/ui/pages/login/view_models/login_event.dart';
import 'package:flutter_playgound/ui/pages/login/view_models/login_view_model.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  final Login? login;

  const LoginPage({super.key, this.login});

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String token = "";

  final viewModel = Get.find<LoginViewModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("login app bar"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                hintText: 'ch.jooon@gmail.com',
              )),
          TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'your password',
              )),
          OutlinedButton(
            onPressed: () {
              viewModel.onEvent(LoginEvent.loginTry(
                  LoginMethod.EMAIL,
                  _emailController.text,
                  _passwordController.text,
                  token
              ));
            },
            child: const Text("login!"),
          )
        ],
      ),
    );
  }
}
