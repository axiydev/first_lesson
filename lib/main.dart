/*
Created by Axmadjon Isaqov on 14:54:47 18.07.2022
© 2022 @axi_dev 
*/
//UI
import 'package:first_lesson/pages/fourth_page/fourth_page.dart';
import 'package:first_lesson/pages/home_page/home_page.dart';
import 'package:first_lesson/pages/second_page/second_page.dart';
import 'package:first_lesson/pages/task_page/task_page.dart';
import 'package:first_lesson/pages/third_page/third_page.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        HomePage.path: (context) => const HomePage(),
        SecondPage.path: (context) => const SecondPage(),
        ThirdPage.path: (context) => const ThirdPage(),
        FourthPage.path: (context) => const FourthPage(),
        TaskPage.path: (context) => const TaskPage()
      },
      initialRoute: TaskPage.path,
    );
  }
}
