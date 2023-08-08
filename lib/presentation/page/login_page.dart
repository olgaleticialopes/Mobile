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
         width: 150,
         height: 150),
        SizedBox(
          width: 300,
          child: Column(
            children: [
               Padding(
          padding:const EdgeInsets.only(bottom: 9, top: 9),
         child: TextField(
          controller: loginController,
          decoration: const InputDecoration(
            labelText: 'Usuario',
            border: OutlineInputBorder()
          ),
         ),),
         Padding(padding: const EdgeInsets.only(bottom: 8),
         child: TextField(controller: passwordController,
         decoration: const InputDecoration(
            labelText: 'Senha',
            border: OutlineInputBorder(),
          ),
          obscureText: true,
          ),      
         ),
         SizedBox(
          width: double.maxFinite,
          height: 40,
          child:ElevatedButton(onPressed: () => navigateToHome(context),
           child: const Text('Entrar')
          ) ,
         )
            ]
        ),
         ),        
        ],
      )),
    );
  }

  void navigateToHome(BuildContext context){
    Navigator.pushNamed(context, '/home');
  }
}