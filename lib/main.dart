import 'package:bloc_example/feature/main_page/view/main_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const MainPage(),
    );
  }
}




//todo:bu example da navigationu da yönetimini pekiştirebilirsin!