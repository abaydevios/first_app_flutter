// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common/color_constraints.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        border: Border(),
        backgroundColor: CupertinoColors.white,
        middle: Text('Профиль'),
      ),
        child: SafeArea(
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 50),
        
        Icon(Icons.person,size: 130, color: Colors.black,
        ),

        Text('Ivan Sidorov', 
        textAlign: TextAlign.center, 
        style: TextStyle(fontSize: 24)
        ),
        SizedBox(height: 10,),
        Text('ivansidorov@gmail.com', 
        textAlign: TextAlign.center, 
        style: TextStyle(fontSize: 16, color: Colors.grey),
        
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
          
          child: CupertinoButton(
          
            color: AppColors.white,
            child: Text('Выйти',
             style: TextStyle(
              color: Colors.red)
              ), 
            onPressed: (){

            }
            ),
              
            
        ),
      ],
    )));
  }
}









// class ListScreen extends StatelessWidget {
//   const ListScreen ({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       child: ListView.separated(
//         itemBuilder: ((context, index) => Text('asd')), 
//         separatorBuilder: ((context, index) => Divider()),
//         itemCount: 5),
//         );
//   }
// }
