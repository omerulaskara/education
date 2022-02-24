import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:abcegitim/anasayfa.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MesleklerEng extends StatefulWidget {
  const MesleklerEng({Key? key}) : super(key: key);

  @override
  _MesleklerEngState createState() => _MesleklerEngState();
}

class _MesleklerEngState extends State<MesleklerEng> {
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
                  color: Colors.yellow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(padding: EdgeInsets.only(left: 10),
                        child: Text('OCCUPATIONS', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 30,
                            color: Colors.deepOrange,
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
                            color: Colors.redAccent,
                          ),
                          label: const Text(
                            'Exit',
                            style: TextStyle(color: Colors.red,shadows: <Shadow>[Shadow(offset: Offset(0.5, 0.5))]),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.yellowAccent),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('TEACHER')),
                            ),
                            SizedBox(
                                width: screenwidth - screenwidth / 3 - 35,
                                child: const Image(
                                  image: AssetImage('assets/images/ogret.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('DOCTOR')),
                            ),
                            SizedBox(
                                width: screenwidth - screenwidth / 3 - 35,
                                child: const Image(
                                  image: AssetImage('assets/images/doktor.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('CHEF')),
                            ),
                            SizedBox(
                                width: screenwidth - screenwidth / 3 - 35,
                                child: const Image(
                                  image: AssetImage('assets/images/asci.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('NURSE')),
                            ),
                            SizedBox(
                                width: screenwidth - screenwidth / 3 - 35,
                                child: const Image(
                                  image: AssetImage('assets/images/hemsire.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('POLICE OFFICER')),
                            ),
                            SizedBox(
                                width: screenwidth - screenwidth / 3 - 35,
                                child: const Image(
                                  image: AssetImage('assets/images/polis.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('PILOT')),
                            ),
                            SizedBox(
                                width: screenwidth - screenwidth / 3 - 35,
                                child: const Image(
                                  image: AssetImage('assets/images/pilot.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('JUDGE')),
                            ),
                            SizedBox(
                                width: screenwidth - screenwidth / 3 - 35,
                                child: const Image(
                                  image: AssetImage('assets/images/hakim.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('LAWYER')),
                            ),
                            SizedBox(
                                width: screenwidth - screenwidth / 3 - 35,
                                child: const Image(
                                  image: AssetImage('assets/images/avukat.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('MECHANIC')),
                            ),
                            SizedBox(
                                width: screenwidth - screenwidth / 3 - 35,
                                child: const Image(
                                  image: AssetImage('assets/images/tamirci.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('FIRE FIGHTER')),
                            ),
                            SizedBox(
                                width: screenwidth - screenwidth / 3 - 35,
                                child: const Image(
                                  image:
                                  AssetImage('assets/images/itfaiyeci.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('FARMER')),
                            ),
                            SizedBox(
                                width: screenwidth - screenwidth / 3 - 35,
                                child: const Image(
                                  image: AssetImage('assets/images/ciftci.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('ARTIST')),
                            ),
                            SizedBox(
                                width: screenwidth - screenwidth / 3 - 35,
                                child: const Image(
                                  image: AssetImage('assets/images/ressam.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('ASTRONAUT')),
                            ),
                            SizedBox(
                                width: screenwidth - screenwidth / 3 - 35,
                                child: const Image(
                                  image: AssetImage('assets/images/astronot.png'),
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
                              child: ElevatedButton.icon(style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                                  onPressed: () {player.play('a.mp3');},
                                  icon: const Icon(Icons.volume_down),
                                  label: const Text('MUSICIAN')),
                            ),
                            SizedBox(
                                width: screenwidth - screenwidth / 3 - 35,
                                child: const Image(
                                  image: AssetImage('assets/images/muzisyen.png'),
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
