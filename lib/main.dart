import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_app/presentation/pages/splash/view/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      home: const SplashPage(),
    );
  }
}
