import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class popup_dailygift extends StatefulWidget {
  const popup_dailygift({super.key});

  @override
  State<popup_dailygift> createState() => _popup_dailygiftState();
}

class _popup_dailygiftState extends State<popup_dailygift> {
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    double hit = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/g4au_t8ix_210816.jpg'),
              fit: BoxFit.cover),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              top: 220,
              child: Container(
                width: wid / 1.55,
                height: hit / 1.97,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
            AlertDialog(
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Gap(20),
                  Text(
                    'Pick your daily Gift !',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo),
                  ),
                  Gap(20),
                  Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/m507t0003_16june22_icon_safe_box_04.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Gap(20),
                ],
              ),
            ),
            Positioned(
              top: 172,
              right: 80,
              child: Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: const Center(
                  child: Text(
                    'DAILY GIFT',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 70, 80, 141)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
