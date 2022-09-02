// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color(0xFFF3F4F6),
      navigationBar: CupertinoNavigationBar(
        border: Border(),
        backgroundColor: CupertinoColors.white,
        middle: Text('Авторизация'),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          CupertinoTextField(
            placeholder: 'Логин или почта',
              decoration: BoxDecoration(
                color: CupertinoColors.white
              ),
            padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
          ),

          Container(
            height: 1,
            color: Color(0xFFE0E6ED),
            margin: const EdgeInsets.symmetric(horizontal: 16),
          ),



          CupertinoTextField(
            decoration: BoxDecoration(
              color: CupertinoColors.white,
            ),
            placeholder: 'Пароль',
            padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16)
          ),


          SizedBox(height: 32),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CupertinoButton(
              color: Color.fromARGB(255, 26, 145, 64),
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text('Войти'), onPressed: (){}),
          ),
        
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CupertinoButton(
              color: Color.fromARGB(255, 26, 145, 64),
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text ('Зарегистрироваться', 
              style: TextStyle(fontWeight: FontWeight.bold)), 
              onPressed: (){}),
          ),

        ],),
      ),
    );
  }
}
