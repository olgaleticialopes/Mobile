import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body:  Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Image.asset('assets/logo.png',
         width: 100,
         height: 100),
         Padding(
          padding:const EdgeInsets.only(bottom: 8, top: 8),
         child: TextField(
          controller: loginController,
         ),),
         Padding(padding: const EdgeInsets.only(bottom: 8),
         child: TextField(controller: passwordController,),
         ),
         ElevatedButton(onPressed: (){}, child: const Text('Entrar'))
        ],
      )),
    );
  }
}