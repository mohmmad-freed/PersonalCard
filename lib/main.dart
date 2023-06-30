import 'package:flutter/material.dart';
import 'package:therd_project_cards/pages/MainPage.dart';

void main() {

  runApp(const MainWidget(),);
}
class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
