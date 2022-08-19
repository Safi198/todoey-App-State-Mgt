import 'package:flutter/material.dart';
import 'package:flutter_todoey_app/screens/task_screen.dart';
import 'package:flutter_todoey_app/models/task_data.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        home: TaskScreens(),
      ),
    );
  }
}
