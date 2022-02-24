// ignore_for_file: file_names

import 'dart:io';
import 'package:audioplayers/audioplayers.dart';
import 'package:abcegitim/anasayfa.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HayvanlarEng extends StatefulWidget {
  const HayvanlarEng({Key? key}) : super(key: key);

  @override
  _HayvanlarEngState createState() => _HayvanlarEngState();
}

class _HayvanlarEngState extends State<HayvanlarEng> {
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
                  color: Colors.deepPurple,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(padding: EdgeInsets.only(left: 10),
                        child: Text('ANIMALS', style: TextStyle(
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
                            'Exit',
                            style: TextStyle(color: Colors.white,shadows: <Shadow>[Shadow(offset: Offset(0.5, 0.5))]),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.deepPurple),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('OCUTOPUS')),
                            ),
                            SizedBox(
                                width: screenwidth,
                                child: const Image(
                                  image: AssetImage('assets/images/ahtapot.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('SCORPION')),
                            ),
                            SizedBox(
                                width: screenwidth,
                                child: const Image(
                                  image: AssetImage('assets/images/akrep.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('BEE')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/ari.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('LION')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/aslan.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('HORSE')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/at.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('BEAR')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/ayi.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('FISH')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/balik.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('WHALE')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/balina.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('OWL')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/baykus.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('GAZELLE')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image:
                                  AssetImage('assets/images/ceylan.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('CAMEL')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/deve.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('DONKEY')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/esek.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('MOUSE')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/fare.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('ELEPHANT')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/fil.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('RHINO')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/gergedan.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('COW')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/inek.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('TIGER')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/kaplan.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('TURTLE')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/kaplum.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('ANT')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/karinca.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('CAT')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/kedi.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('BUTTERFLY')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/kelebek.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('DOG')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/kopek.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('WOLF')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/kurt.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('BIRD')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/kus.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('SPIDER')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/orumcek.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('PANDA')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/panda.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('PARROT')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/papagan.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('SQUIRREL')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/sincap.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('RABBIT')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/tavsan.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('CHICKEN')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/tavuk.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('FOX')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/tilki.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('CROCODILE')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/timsah.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('LADYBUG')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/ugur.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('SNAKE')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/yilan.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('ZEBRA')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/zebra.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('GIRAFFE')),
                            ),
                            SizedBox(
                                width: screenwidth ,
                                child: const Image(
                                  image: AssetImage('assets/images/zurafa.png'),
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
