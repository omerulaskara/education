import 'package:abcegitim/A.dart';
import 'package:abcegitim/AhtapotTr.dart';
import 'package:flutter/material.dart';

class HarflerTr extends StatefulWidget {
  const HarflerTr({Key? key}) : super(key: key);

  @override
  _HarflerTrState createState() => _HarflerTrState();
}

class _HarflerTrState extends State<HarflerTr> {
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
                                    'assets/images/trbtnharfler.png')),
                          ),
                        ),
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder:
                                      (context) =>
                                  const Atr()));
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          height: screenheight / 3,
                          width: screenwidth / 2,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/trbtnhayvanlar.png')),
                          ),
                        ),
                        onTap: (){Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder:
                                    (context) =>
                                const AhtapotTr()));},
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
