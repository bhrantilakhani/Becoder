import 'package:flutter/material.dart';
import 'package:woodland_game/freetokens/popup_freetokens.dart';

class freetokens extends StatefulWidget {
  const freetokens({super.key});

  @override
  State<freetokens> createState() => _freetokensState();
}

class _freetokensState extends State<freetokens> {
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
                showDialog(
                    context: context, builder: (_) => popup_freetockens());
              },
              child: Container(
                height: wid / 8,
                width: wid / 2,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 99, 52, 107),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'Free Tokens',
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
