// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:first_app_flutter/scr/routes/routing_const.dart';
import 'package:first_app_flutter/scr/screens/register_screen/register_widget.dart';
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
            CustomTextFieldLogin(),
            Container(
              height: 1,
              color: Color(0xFFE0E6ED),
              margin: const EdgeInsets.symmetric(horizontal: 16),
            ),
            CustomTextFieldPassAuth(),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CupertinoButton(
                  color: Color.fromARGB(255, 26, 145, 64),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text('Войти'),
                  onPressed: () {}),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CupertinoButton(
                  color: Color.fromARGB(255, 26, 145, 64),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text('Регистрация',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.pushNamed(context, RegisterRoute);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextFieldPassAuth extends StatelessWidget {
  const CustomTextFieldPassAuth({
    Key? key,
    this.placeholder = 'Введите'
  }) : super(key: key);

  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
        decoration: BoxDecoration(
          color: CupertinoColors.white,
        ),
        placeholder: 'Пароль',
        padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16));
  }
}

class CustomTextFieldLogin extends StatelessWidget {
  const CustomTextFieldLogin({Key? key, this.placeholder = 'Введите'})
      : super(key: key);

  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      placeholder: 'Логин или почта',
      decoration: BoxDecoration(color: CupertinoColors.white),
      padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
    );
  }
}
