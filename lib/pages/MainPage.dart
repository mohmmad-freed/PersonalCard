// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../userData.dart';
import '../utilitys/boxSizes.dart';
import '../utilitys/cardStyle.dart';
import '../utilitys/color.dart';
import '../utilitys/dymantions.dart';
import '../utilitys/fontStyle.dart';
import '../utilitys/fontsizes.dart';
import '../utilitys/images_path.dart';


UserData users=UserData("محمد فريد العملة", "مبرمج تطبيقات", myPhoto,"0568727202",'mohammad@gmail.com');

class MainHome extends StatelessWidget {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homeBackgroundColor,
      body: SafeArea(
        child: Align(
          alignment: AlignmentDirectional.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(backgroundImage: AssetImage(users.PhotoPath),
              radius: xxlSpace,
              ),
              const SBox(),
              Text(users.Name,style:  const TextStyle(color: userNameColor,fontFamily: userNameFont,fontSize:xlFont )),
              Text(users.Major,style:  const TextStyle(color: userNameColor,fontFamily: userNameFont,fontSize:xlFont )),
              const SBox(),
              CardStyle(information: users.Email, ic: Icons.email_outlined),
              CardStyle(information: users.Phone, ic: Icons.phone_enabled_outlined),
              const XMbox()
            ],
          ),
        ),
      ),
    );
  }
}
