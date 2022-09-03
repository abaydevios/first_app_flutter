import 'package:first_app_flutter/scr/screens/auth/auth_screen.dart';
import 'package:first_app_flutter/scr/screens/register_screen/register_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.gift)),
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
                return AuthScreen();
              case 3:
                return RegisterScreen();

              default:
                return RegisterScreen();
            }
          },
        );
      },
    );
  }
}
