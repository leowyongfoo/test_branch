import 'package:flutter/material.dart';
import 'package:travel_app/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //benson testing branch
  //test rebase merge again
  //test 1 added same feature with rebase branch
  //rebase branch add feature
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App in master branch test push master change',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomePage()
    );
  }
}


