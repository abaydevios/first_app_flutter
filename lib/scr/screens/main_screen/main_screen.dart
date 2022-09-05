// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:first_app_flutter/scr/screens/auth/auth_screen.dart';
import 'package:first_app_flutter/scr/screens/profil/profil.dart';
import 'package:first_app_flutter/scr/screens/register_screen/register_widget.dart';
import 'package:flutter/cupertino.dart';

import '../list/list.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_add)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.square_list)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person)),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            switch (index) {
              case 0:
                return AuthScreen();
              case 1:
                return RegisterScreen();
              case 2:
                return ListScreen();
              case 3:
                return ProfilScreen();

              default:
                return RegisterScreen();
            }
          },
        );
      },
    );
  }
}
