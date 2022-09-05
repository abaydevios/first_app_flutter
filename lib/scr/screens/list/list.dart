
// ignore_for_file: prefer_const_declarations

import 'package:flutter/material.dart';

import '../../images/images.dart';



 class Malls {
    final String imageName;
    final String title;
    final String description;

  Malls({
      required this.imageName,
      required this.title,
      required this.description});
}

class ListScreen extends StatelessWidget {

  final _malls = [
    Malls(
        imageName: AppImages.esen,
        title: 'Esentai Mall',
        description: 'Almaty'),
    Malls(
        imageName: AppImages.silk,
        title: 'Abu-Dhabi Plaza',
        description: 'Nur-Sultan'),    
    Malls(
        imageName: AppImages.mega,
        title: 'Mega Centr',
        description: 'Astana'),  
    Malls(
        imageName: AppImages.dost,
        title: 'Mega Centr',
        description: 'Almaty'), 
  ];

  ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _malls.length,
        itemBuilder: (BuildContext context, int index) {
          final malls = _malls[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Container(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border:
                        Border.all(color: Colors.black.withOpacity(0.2)),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      )
                    ]),
                child: Column(children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(malls.title),
                  SizedBox(
                    height: 10,
                  ),
                  Image(image: AssetImage(malls.imageName),),
                  SizedBox(
                    height: 10,
                  ),
                  Text(malls.description),
                  SizedBox(
                    height: 10,
                  ),
                ]),
              ),
            ),
          );
        });
  }
}



