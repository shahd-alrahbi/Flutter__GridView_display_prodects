// import 'package:day_12_9/screens/Task_screen.dart';
// import 'package:day_12_9/screens/Activity_listview.dart';
// import 'package:day_12_9/screens/example_list_view.dart';
import 'package:day_12_9/screens/grid_view_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Activity_listview(),
      home: grid_view_screen(),
    );
  }
}
