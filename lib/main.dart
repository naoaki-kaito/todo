import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/common/theme.dart';
import 'package:todo/models/task.dart';
import 'package:todo/home.dart';
import 'package:todo/add.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TaskModel(),
        ),
      ],
      child: MaterialApp(
        title: 'TODO',
        theme: appTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/add': (context) => Add(),
        },
      ),
    );
  }
}

