import 'package:flutter/material.dart';
import 'package:woodland_game/Daily_Gift/daily_gifts.dart';
import 'package:woodland_game/freetokens/free_tokens.dart';
import 'package:woodland_game/page_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: page1(),
      // home: freetokens(),
      // home: dailygift(),
    );
  }
}
