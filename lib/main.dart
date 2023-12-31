import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'Splashscreen/splashscreen_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.delayed((const Duration(seconds: 2)));
  FlutterNativeSplash.remove();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      home: const Splashscreen(),
    );
  }
}
