import 'package:flutter/material.dart';

import 'Screens/CardsandWalletScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FTFL Gopinath',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "black",
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF605FE6)),
        useMaterial3: true,
      ),
      home: CardAndWalletsScreen(),
    );
  }
}
