// ignore_for_file: file_names, type_init_formals

import 'package:flutter/material.dart';
import 'boxSizes.dart';
import 'color.dart';
import 'dymantions.dart';
import 'fontsizes.dart';

// ignore: must_be_immutable
class CardStyle extends StatelessWidget {
  IconData ic = Icons.question_mark;
  String information = '';
  CardStyle({
    super.key,
    required String this.information,
    required this.ic,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(sSpace),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(sSpace),
      ),
      color: userNameColor,
      child: Padding(
        padding:  const EdgeInsets.all(xsSpace),
        child: Row(
          children: [
            const XsBox(),
            Icon(ic),
            const MBox(),
            Text(information, style:  const TextStyle(fontSize: mFont)),
          ],
        ),
      ),
    );
  }
}
