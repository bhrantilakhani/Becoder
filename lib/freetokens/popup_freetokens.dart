import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:woodland_game/freetokens/free_tokens.dart';

class popup_freetockens extends StatefulWidget {
  const popup_freetockens({super.key});

  @override
  State<popup_freetockens> createState() => _popup_freetockensState();
}

class _popup_freetockensState extends State<popup_freetockens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/g4au_t8ix_210816.jpg'),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                          child: Text(
                            '300',
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Positioned(
                        left: -5,
                        bottom: -2,
                        child: Image.asset(
                          'assets/images/icons8-dollar-coin-94.png',
                          height: 30,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black54,
                          blurRadius: 1,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(70),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                AlertDialog(
                  backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Gap(50),
                      Stack(
                        children: [
                          Container(
                            height: 200,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/images/m502t0062_b_treasure_chest_28jul22.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ],
                      ),
                      const Gap(40),
                      Stack(
                        children: [
                          Container(
                            height: 200,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/images/m507t0003_16june22_icon_safe_box_04.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ],
                      ),
                      const Gap(20),
                    ],
                  ),
                ),
                Positioned(
                  top: 265,
                  right: 140,
                  child: Container(
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.indigo[400],
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 3,
                            offset: Offset(0, 3),
                            color: Colors.indigo)
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/facebook.png',
                          height: 20,
                        ),
                        const Text(
                          'Connect',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 50,
                  right: 130,
                  child: Container(
                    height: 45,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.teal[300],
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 3,
                            offset: Offset(0, 3),
                            color: Colors.teal)
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/video-camera.png',
                          height: 20,
                        ),
                        const Text(
                          'Watch Video',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: const Color.fromARGB(255, 202, 205, 224),
                    ),
                    child: const Center(
                      child: Text(
                        'FREE TOKENS',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 70, 80, 141)),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 40,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 5,
                            offset: Offset(0, 3),
                            color: Colors.indigo)
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.indigo[500],
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const freetokens(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.close_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
