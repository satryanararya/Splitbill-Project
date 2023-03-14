import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:splitbill/splash/splash_screen.dart';

import 'menu/menu_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.purple,
          appBarTheme: const AppBarTheme(foregroundColor: Colors.black)),
      home: const SplashScreen(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (context) => const MenuScreen()));
              },
              icon: const Icon(LineAwesomeIcons.airbnb))
        ],
      ),
      body: const Center(
        child: Text("Hi"),
      ),
    );
  }
}

class MyColor {
  static const color1 = Color.fromARGB(255, 235, 18, 255);
  static const color2 = Color.fromARGB(255, 112, 103, 255);

  static const gradient1 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomRight,
    colors: [
      color1,
      color2,
    ],
  );
}
