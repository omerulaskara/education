
// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'package:abcegitim/HomeScreen.dart';
import 'package:abcegitim/OgretmenTr.dart';
import 'package:abcegitim/SifirTr.dart';
import 'package:abcegitim/bankEng.dart';
import 'package:abcegitim/bankTr.dart';
import 'package:abcegitim/harflerEng.dart';
import 'package:abcegitim/harflerTr.dart';
import 'package:flutter/material.dart';

import 'AhtapotEn.dart';
import 'AhtapotT.dart';
import 'OgretmenEng.dart';
import 'sifirEng.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);



  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  @override
  void initState() {
    super.initState();
  }



  @override
  void dispose() {
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {

    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;




    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.blueAccent,
            image: DecorationImage(
                image: AssetImage('assets/images/anaarka.png'),
                fit: BoxFit.fitHeight)),
        child: Column(
          children: [
            SizedBox(
              height: screenheight / 10,
              child: Column(
                children: [
                  ElevatedButton.icon(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                  height: screenheight - screenheight/1.5,
                                  width: screenwidth - 150,
                                  decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.black,
                                            Colors.black26
                                          ])),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      const Text(
                                        "SÜPER MOD İle Neler Kazanacaksın?",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.yellow,
                                        ),
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            "Tüm bölümlerin ingilizcesi",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white70,
                                            ),
                                          ),
                                          Icon(
                                            Icons.add,
                                            size: 40,
                                            color: Colors.green,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            "Görsel zekayı geliştiren oyunlar",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 14.5,
                                              color: Colors.white70,
                                            ),
                                          ),
                                          Icon(
                                            Icons.add,
                                            size: 40,
                                            color: Colors.green,
                                          ),
                                        ],
                                      ),
                                      const Text("HEMEN GEÇ FISATI KAÇIRMA",
                                          style: TextStyle(
                                            fontSize: 14.5,
                                            color: Colors.deepOrange,
                                          )),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: const Text("49.90 ₺"),
                                        style: ButtonStyle(
                                          backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.deepOrange),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                      ),
                      icon: const Icon(Icons.star),
                      label: const Text("SüPER MOD'A GEÇ")),


                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: screenheight / 5,
                  child: Row(
                    children: [
                      SizedBox(
                          width: screenwidth,
                          child: const Image(
                            image: AssetImage('assets/images/kuss.png'),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: screenwidth / 3,
                      child: Column(
                        children: const [
                          Image(
                              image: AssetImage('assets/images/anaressam.png')),
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: screenwidth / 3,
                      child: Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              height: screenheight / 15,
                              width: screenwidth / 1.5,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/btnharfler.png'),
                                      fit: BoxFit.fill)),
                            ),
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return Theme(
                                    data: Theme.of(context).copyWith(
                                        dialogBackgroundColor:
                                            Colors.transparent),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        SizedBox(
                                            height: 150,
                                            width: 150,
                                            child: GestureDetector(
                                              child: Container(
                                                height: screenheight / 15,
                                                width: screenwidth / 1.5,
                                                decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/btning.png'),
                                                        fit: BoxFit.fill)),
                                              ),
                                              onTap: () {Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder:
                                                          (context) =>
                                                      const HarflerEng()));},
                                            )),
                                        SizedBox(
                                            height: 150,
                                            width: 150,
                                            child: GestureDetector(
                                              child: Container(
                                                height: screenheight / 15,
                                                width: screenwidth / 1.5,
                                                decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/btntr.png'),
                                                        fit: BoxFit.fill)),
                                              ),
                                              onTap: () {Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder:
                                                          (context) =>
                                                      const HarflerTr()));},
                                            )),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                          GestureDetector(
                            child: Container(
                              height: screenheight / 15,
                              width: screenwidth / 1.5,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/btnmeslekler.png'),
                                      fit: BoxFit.fill)),
                            ),
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return Theme(
                                    data: Theme.of(context).copyWith(
                                        dialogBackgroundColor:
                                            Colors.transparent),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        SizedBox(
                                            height: 150,
                                            width: 150,
                                            child: GestureDetector(
                                              child: Container(
                                                height: screenheight / 15,
                                                width: screenwidth / 1.5,
                                                decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/btning.png'),
                                                        fit: BoxFit.fill)),
                                              ),
                                              onTap: () {Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder:
                                                          (context) =>
                                                      const OgretmenEng()));},
                                            )),
                                        SizedBox(
                                            height: 150,
                                            width: 150,
                                            child: GestureDetector(
                                              child: Container(
                                                height: screenheight / 15,
                                                width: screenwidth / 1.5,
                                                decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/btntr.png'),
                                                        fit: BoxFit.fill)),
                                              ),
                                              onTap: () {Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder:
                                                          (context) =>
                                                      const OgretmenTr()));},
                                            )),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                          GestureDetector(
                            child: Container(
                              height: screenheight / 15,
                              width: screenwidth / 1.5,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/btnmekanlar.png'),
                                      fit: BoxFit.fill)),
                            ),
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return Theme(
                                    data: Theme.of(context).copyWith(
                                        dialogBackgroundColor:
                                            Colors.transparent),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        SizedBox(
                                            height: 150,
                                            width: 150,
                                            child: GestureDetector(
                                              child: Container(
                                                height: screenheight / 15,
                                                width: screenwidth / 1.5,
                                                decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/btning.png'),
                                                        fit: BoxFit.fill)),
                                              ),
                                              onTap: () {Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder:
                                                          (context) =>
                                                      const BankEng()));},
                                            )),
                                        SizedBox(
                                            height: 150,
                                            width: 150,
                                            child: GestureDetector(
                                              child: Container(
                                                height: screenheight / 15,
                                                width: screenwidth / 1.5,
                                                decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/btntr.png'),
                                                        fit: BoxFit.fill)),
                                              ),
                                              onTap: () {Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder:
                                                          (context) =>
                                                      const BankTr()));},
                                            )),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                          GestureDetector(
                            child: Container(
                              height: screenheight / 15,
                              width: screenwidth / 1.5,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/btnhayvanlar.png'),
                                      fit: BoxFit.fill)),
                            ),
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return Theme(
                                    data: Theme.of(context).copyWith(
                                        dialogBackgroundColor:
                                            Colors.transparent),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        SizedBox(
                                            height: 150,
                                            width: 150,
                                            child: GestureDetector(
                                              child: Container(
                                                height: screenheight / 15,
                                                width: screenwidth / 1.5,
                                                decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/btning.png'),
                                                        fit: BoxFit.fill)),
                                              ),
                                              onTap: () {Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder:
                                                          (context) =>
                                                      const AhtapotEn()));},
                                            )),
                                        SizedBox(
                                            height: 150,
                                            width: 150,
                                            child: GestureDetector(
                                              child: Container(
                                                height: screenheight / 15,
                                                width: screenwidth / 1.5,
                                                decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/btntr.png'),
                                                        fit: BoxFit.fill)),
                                              ),
                                              onTap: () {Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder:
                                                          (context) =>
                                                      const AhtapotT()));},
                                            )),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                          GestureDetector(
                            child: Container(
                              height: screenheight / 15,
                              width: screenwidth / 1.2,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/btnsayilar.png'),
                                      fit: BoxFit.fill)),
                            ),
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return Theme(
                                    data: Theme.of(context).copyWith(
                                        dialogBackgroundColor:
                                            Colors.transparent),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        SizedBox(
                                            height: 150,
                                            width: 150,
                                            child: GestureDetector(
                                              child: Container(
                                                height: screenheight / 15,
                                                width: screenwidth / 1.5,
                                                decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/btning.png'),
                                                        fit: BoxFit.fill)),
                                              ),
                                              onTap: () {Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder:
                                                          (context) =>
                                                      const sifirEng()));},
                                            )),
                                        SizedBox(
                                            height: 150,
                                            width: 150,
                                            child: GestureDetector(
                                              child: Container(
                                                height: screenheight / 15,
                                                width: screenwidth / 1.5,
                                                decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/btntr.png'),
                                                        fit: BoxFit.fill)),
                                              ),
                                              onTap: () {Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder:
                                                          (context) =>
                                                      const SifirTr()));},
                                            )),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                          GestureDetector(
                            child: Container(
                              height: screenheight / 15,
                              width: screenwidth / 1.5,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/btnzeka.png'),
                                      fit: BoxFit.fill)),
                            ),
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return Theme(
                                    data: Theme.of(context).copyWith(
                                        dialogBackgroundColor:
                                            Colors.transparent),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        SizedBox(
                                            height: 150,
                                            width: 150,
                                            child: GestureDetector(
                                              child: Container(
                                                height: screenheight / 15,
                                                width: screenwidth / 1.5,
                                                decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/btning.png'),
                                                        fit: BoxFit.fill)),
                                              ),
                                              onTap: () {},
                                            )),
                                        SizedBox(
                                            height: 150,
                                            width: 150,
                                            child: GestureDetector(
                                              child: Container(
                                                height: screenheight / 15,
                                                width: screenwidth / 1.5,
                                                decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/btntr.png'),
                                                        fit: BoxFit.fill)),
                                              ),
                                              onTap: () {Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder:
                                                          (context) =>
                                                      const HomeScreen()));},
                                            )),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: screenwidth / 3,
                    )
                  ],
                )
              ],
            ),
            SizedBox(
                height: screenheight / 5,
                child: Row(
                  children: const [
                    Image(
                      image: AssetImage('assets/images/kaplumbaga.png'),
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(width: 50),
                    Image(
                      image: AssetImage(
                        'assets/images/ogretmen.png',
                      ),
                      height: 500,
                    ),
                  ],
                )),
          ],
        ),
      ),
    ));
  }
}

