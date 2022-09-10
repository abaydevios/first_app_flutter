// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, use_rethrow_when_possible, unused_local_variable

import 'package:dio/dio.dart';
import 'package:first_app_flutter/scr/common/color_constraints.dart';
import 'package:first_app_flutter/scr/routes/routing_const.dart';
import 'package:first_app_flutter/scr/screens/register_screen/register_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Dio dio = Dio();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: AppColors.scaffoldBackground,
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
            // CustomTextFieldLogin(),
            Container(
              // height: 1,
              color: AppColors.white,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomTextField(
                    controller: emailController,
                    placeholder: 'Логин или почта',
                  ),
                  // TextFieldDivider(),
                  CustomTextField(
                    controller: passwordController,
                    placeholder: 'Пароль',
                  )
                ],
              ),
            ),
            // CustomTextFieldPassAuth(),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CupertinoButton(
                  color: AppColors.main,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text('Войти'),
                  onPressed: () async {
                    Dio dio = Dio();
                    Box tokensBox = Hive.box('tokens');

                    tokensBox.put('access', 'testovaya_zapis');
                    print(tokensBox.get('access'));
                    print(emailController.text);
                    print(passwordController.text);
                    try {
                      Response response = await dio.post(
                        'http://188.225.83.80:6719/api/v1/auth/login',
                        data: {
                          'email': emailController.text,
                          'password': passwordController.text,
                        },
                      );

                      tokensBox.put(
                          'access', response.data['tokens']['accessToken']);
                      tokensBox.put(
                          'refresh', response.data['tokens']['refreshToken']);

                      print(tokensBox.get('access'));
                      print(tokensBox.get('refresh'));

                    
                      Navigator.pushReplacementNamed(context, MainRoute);
                    } on DioError catch (e) {
                      print(e.response!.data);
                      showCupertinoModalPopup(
                        context: context,
                        builder: (context) {
                          return CupertinoAlertDialog(
                            title: Text('Ошибка'),
                            content: Text('Неправильный логин или пароль!'),
                            actions: [
                              CupertinoButton(
                                child: Text('ОК'),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ],
                          );
                        },
                      );
                      // throw e;
                    }
                  }),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CupertinoButton(
                  color: AppColors.main,
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
  const CustomTextFieldPassAuth({Key? key, this.placeholder = 'Пароль'})
      : super(key: key);

  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
        decoration: BoxDecoration(
          color: CupertinoColors.white,
        ),
        placeholder: placeholder,
        padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16));
  }
}

class CustomTextFieldLogin extends StatelessWidget {
  const CustomTextFieldLogin({Key? key, this.placeholder = 'Логин или почта'})
      : super(key: key);

  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      placeholder: placeholder,
      decoration: BoxDecoration(color: CupertinoColors.white),
      padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
    );
  }
}
