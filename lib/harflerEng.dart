import 'package:flutter/material.dart';
import 'package:abcegitim/AENG.dart';
import 'package:abcegitim/AhtapotEng.dart';

class HarflerEng extends StatefulWidget {
  const HarflerEng({Key? key}) : super(key: key);

  @override
  _HarflerEngState createState() => _HarflerEngState();
}

class _HarflerEngState extends State<HarflerEng> {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/trarka.gif'),
                fit: BoxFit.fitHeight)),
        child: Column(
          children: [
            Container(
              height: screenheight / 2.7,
            ),
            Row(
              children: [
                SizedBox(
                  height: screenheight / 3,
                  child: Row(
                    children: [
                      GestureDetector(
                        child: Container(
                          height: screenheight / 3,
                          width: screenwidth / 2,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/engbtnhayvanlar.png')),
                          ),
                        ),
                        onTap: (){Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder:
                                    (context) =>
                                const Aeng()));
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          height: screenheight / 3,
                          width: screenwidth / 2,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/engbtnharfler.png')),
                          ),
                        ),
                        onTap: (){Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder:
                                    (context) =>
                                const AhtapotEng()));},
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: screenheight / 5,
            )
          ],
        ),
      ),
    );
  }
}
