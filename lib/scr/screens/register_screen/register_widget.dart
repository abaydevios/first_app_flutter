// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:first_app_flutter/scr/common/color_constraints.dart';
import 'package:flutter/cupertino.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.scaffoldBackground,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        border: Border(),
        middle: Text('Регистрация'),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextField(),
            Container(
              height: 1,
              color: AppColors.white,
              margin: const EdgeInsets.symmetric(horizontal: 16),
            ),
            CustomTextFieldLogin(),
            Container(
              height: 1,
              color: AppColors.white,
              margin: const EdgeInsets.symmetric(horizontal: 16),
            ),
            CustomTextFieldEmail(),
            Container(
              height: 1,
              color: AppColors.white,
              margin: const EdgeInsets.symmetric(horizontal: 16),
            ),
            CustomTexFieldPassword(),
            SizedBox(
              height: 350,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CupertinoButton(
                  color: AppColors.main,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Создать аккаунт',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTexFieldPassword extends StatelessWidget {
  const CustomTexFieldPassword({
    Key? key,
    this.placeholder = 'Введите'
  }) : super(key: key);

  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
      placeholder: ('Пароль'),
      decoration: BoxDecoration(
        color: CupertinoColors.white,
      ),
    );
  }
}

class CustomTextFieldEmail extends StatelessWidget {
  const CustomTextFieldEmail({
    Key? key,
    this.placeholder = 'Введите',
  }) : super(key: key);

  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
      placeholder: ('Почта'),
      decoration: BoxDecoration(
        color: CupertinoColors.white,
      ),
    );
  }
}

class CustomTextFieldLogin extends StatelessWidget {
  const CustomTextFieldLogin({
    Key? key,
    this.placeholder = 'Введите',
  }) : super(key: key);

  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
      placeholder: ('Телефон'),
      decoration: BoxDecoration(
        color: CupertinoColors.white,
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.placeholder = 'Введите',
  }) : super(key: key);

  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
      placeholder: ('Логин'),
      decoration: BoxDecoration(
        color: CupertinoColors.white,
      ),
    );
  }
}
