import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'AstronotEng.dart';
import 'TimsahEn.dart';
import 'YilanEn.dart';
import 'anasayfa.dart';

class UgurEn extends StatefulWidget {
  const UgurEn({Key? key}) : super(key: key);

  @override
  _UgurEnState createState() => _UgurEnState();
}

class _UgurEnState extends State<UgurEn> {
  static AudioCache player = AudioCache();
  AudioPlayer advancedPlayer = AudioPlayer();
  String? localFilePath;
  String? localAudioCacheURI;
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return SafeArea(child: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/hayvanarka.png'),fit: BoxFit.fitHeight
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Container(
              height: screenheight/10,
              width: screenwidth/6,
              child: GestureDetector(
                child: const Image(image: AssetImage('assets/images/cikis.png'),),
                onTap: (){Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:
                            (context) =>
                        const Anasayfa()));},
              ),
            ),
          ),

          Container(
            height: screenheight/2,
            child: GestureDetector(
              child: const Image(image: AssetImage('assets/images/ugur.png'),),
              onTap: (){player.play('a.mp3');},
            ),

          ),
          Container(
              height: screenheight/7,
              child: const Text('LADYBUG',style: TextStyle(fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                  color: Colors.blueAccent,
                  fontFamily: 'Storm',
                  shadows: <Shadow>[Shadow(offset: Offset(1.0, 1.0))]),)

          ),
          Container(
            height: screenheight/10,
            width: screenwidth-50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: const Image(image: AssetImage('assets/images/oksol.png'),),
                  onTap: (){Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder:
                              (context) =>
                          const TimsahEn()));},
                ),
                Container(
                  height: screenheight/10,
                  child: GestureDetector(
                    child: const Image(image: AssetImage('assets/images/hoparlor.png'),),
                    onTap: (){player.play('a.mp3');},
                  ),
                ),
                GestureDetector(
                  child: const Image(image: AssetImage('assets/images/oksag.png'),),
                  onTap: (){Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder:
                              (context) =>
                          const YilanEn()));},
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }}