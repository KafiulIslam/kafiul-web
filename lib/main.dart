import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kafi_website/utils/color.dart';
import 'package:kafi_website/views/home/home_screen.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: primaryColor,
    ),

  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kafiul Islam',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: white,
      ),
      home: const HomeScreen(),
    );
  }
}

