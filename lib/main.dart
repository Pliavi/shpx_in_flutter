import 'package:flutter/material.dart';
import 'package:flutter_shpx/constants/colors.dart';
import 'package:flutter_shpx/pages/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: SHPXColors.primary,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
