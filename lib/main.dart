import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitter/home.dart';
import 'package:twitter/theme.dart';

import 'model/user.dart';
import 'providers.dart';

void main() {
  var user;
  runApp(
    ChangeNotifierProvider(
      create: (context) => App(),
      child: const MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightMode,
      darkTheme: darkMode,
      home: const Home(),
    );
  }
}