import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:abcegitim/anasayfa.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MekanlarTr extends StatefulWidget {
  const MekanlarTr({Key? key}) : super(key: key);

  @override
  _MekanlarTrState createState() => _MekanlarTrState();
}

class _MekanlarTrState extends State<MekanlarTr> {
  static AudioCache player = AudioCache();
  AudioPlayer advancedPlayer = AudioPlayer();
  String? localFilePath;
  String? localAudioCacheURI;
  @override
  void initState() {
    super.initState();
    if (kIsWeb) {
      // Calls to Platform.isIOS fails on web
      return;
    }
    if (Platform.isIOS) {
      player.fixedPlayer?.notificationService.startHeadlessService();
    }
  }
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery
        .of(context)
        .size
        .width;
    final screenheight = MediaQuery
        .of(context)
        .size
        .height;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [
                      0.1,
                      0.4,
                      0.7,
                      0.9
                    ],
                    colors: [
                      Colors.pinkAccent,
                      Colors.yellowAccent,
                      Colors.blueAccent,
                      Colors.purpleAccent
                    ])),
            child: ListView(
              children: [
                Container(
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(padding: EdgeInsets.only(left: 10),
                        child: Text('MEKANLAR', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 30,
                            color: Colors.white,
                            fontFamily: 'FunkyFonts',
                            shadows: <Shadow>[Shadow(offset: Offset(1.0, 1.0))]),),),
                      Container(
                        alignment: Alignment.topRight,
                        child: ElevatedButton.icon(
                          onPressed: () {Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder:
                                      (context) =>
                                  const Anasayfa()));player.clearAll();},
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          label: const Text(
                            'Çıkış',
                            style: TextStyle(color: Colors.white,shadows: <Shadow>[Shadow(offset: Offset(0.5, 0.5))]),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.blue),
                          ),
                        ),
                      )

                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                        width: screenwidth - 5,
                        height: screenheight / 3 * 2,
                        child: Container(decoration: BoxDecoration(border: Border.all(width: 5)),child: Column(
                          children: [
                            SizedBox(
                              width: screenwidth / 2,
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.blue),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('İTFAİYE BİNASI')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/binaitfa.png'),
                                  height: 400,
                                )),
                          ],
                        ),)
                    ),
                    SizedBox(
                        width: screenwidth - 5,
                        height: screenheight / 3 * 2,
                        child: Container(decoration: BoxDecoration(border: Border.all(width: 5)),child: Column(
                          children: [
                            SizedBox(
                              width: screenwidth / 2,
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.blue),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('OKUL')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/binaokul.png'),
                                  height: 400,
                                )),
                          ],
                        ),)
                    ),
                    SizedBox(
                        width: screenwidth - 5,
                        height: screenheight / 3 * 2,
                        child: Container(decoration: BoxDecoration(border: Border.all(width: 5)),child: Column(
                          children: [
                            SizedBox(
                              width: screenwidth / 2,
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.blue),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('BANKA')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/binabank.png'),
                                  height: 400,
                                )),
                          ],
                        ),)
                    ),
                    SizedBox(
                        width: screenwidth - 5,
                        height: screenheight / 3 * 2,
                        child: Container(decoration: BoxDecoration(border: Border.all(width: 5)),child: Column(
                          children: [
                            SizedBox(
                              width: screenwidth / 2,
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.blue),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('PARK')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/park.png'),
                                  height: 400,
                                )),
                          ],
                        ),)
                    ),
                    SizedBox(
                        width: screenwidth - 5,
                        height: screenheight / 3 * 2,
                        child: Container(decoration: BoxDecoration(border: Border.all(width: 5)),child: Column(
                          children: [
                            SizedBox(
                              width: screenwidth / 2,
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.blue),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('PASTANE')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/pastane.png'),
                                  height: 400,
                                )),
                          ],
                        ),)
                    ),
                    SizedBox(
                        width: screenwidth - 5,
                        height: screenheight / 3 * 2,
                        child: Container(decoration: BoxDecoration(border: Border.all(width: 5)),child: Column(
                          children: [
                            SizedBox(
                              width: screenwidth / 2,
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.blue),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('MARKET')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/market.png'),
                                  height: 400,
                                )),
                          ],
                        ),)
                    ),
                    SizedBox(
                        width: screenwidth - 5,
                        height: screenheight / 3 * 2,
                        child: Container(decoration: BoxDecoration(border: Border.all(width: 5)),child: Column(
                          children: [
                            SizedBox(
                              width: screenwidth / 2,
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.blue),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('KÜTÜPHANE')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/kutuphane.png'),
                                  height: 400,
                                )),
                          ],
                        ),)
                    ),
                    SizedBox(
                        width: screenwidth - 5,
                        height: screenheight / 3 * 2,
                        child: Container(decoration: BoxDecoration(border: Border.all(width: 5)),child: Column(
                          children: [
                            SizedBox(
                              width: screenwidth / 2,
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.blue),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('HASTANE')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/hastane.png'),
                                  height: 400,
                                )),
                          ],
                        ),)
                    ),
                    SizedBox(
                        width: screenwidth - 5,
                        height: screenheight / 3 * 2,
                        child: Container(decoration: BoxDecoration(border: Border.all(width: 5)),child: Column(
                          children: [
                            SizedBox(
                              width: screenwidth / 2,
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.blue),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('MÜZE')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/muze.png'),
                                  height: 400,
                                )),
                          ],
                        ),)
                    ),
                    SizedBox(
                        width: screenwidth - 5,
                        height: screenheight / 3 * 2,
                        child: Container(decoration: BoxDecoration(border: Border.all(width: 5)),child: Column(
                          children: [
                            SizedBox(
                              width: screenwidth / 2,
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.blue),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('CAMİ')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image:
                                  AssetImage('assets/images/cami.png'),
                                  height: 400,
                                )),
                          ],
                        ),)
                    ),
                    SizedBox(
                        width: screenwidth - 5,
                        height: screenheight / 3 * 2,
                        child: Container(decoration: BoxDecoration(border: Border.all(width: 5)),child: Column(
                          children: [
                            SizedBox(
                              width: screenwidth / 2,
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.blue),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('KARAKOL')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/karakol.png'),
                                  height: 400,
                                )),
                          ],
                        ),)
                    ),
                    SizedBox(
                        width: screenwidth - 5,
                        height: screenheight / 3 * 2,
                        child: Container(decoration: BoxDecoration(border: Border.all(width: 5)),child: Column(
                          children: [
                            SizedBox(
                              width: screenwidth / 2,
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.blue),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('HAYVANAT BAHÇESİ')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/hayvanat.png'),
                                  height: 400,
                                )),
                          ],
                        ),)
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
