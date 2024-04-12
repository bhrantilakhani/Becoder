import 'package:flutter/material.dart';
import 'package:woodland_game/Daily_Gift/popup_dailgift.dart';

class dailygift extends StatefulWidget {
  const dailygift({super.key});

  @override
  State<dailygift> createState() => _dailygiftState();
}

class _dailygiftState extends State<dailygift> {
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    double hit = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: hit,
        width: wid,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/g4au_t8ix_210816.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                showDialog(context: context, builder: (_) => popup_dailygift());
              },
              child: Container(
                height: wid / 8,
                width: wid / 2,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 99, 52, 107),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'Daily Gifts',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
