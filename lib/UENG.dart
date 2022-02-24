import 'package:audioplayers/audioplayers.dart';
import 'package:abcegitim/B.dart';
import 'package:abcegitim/anasayfa.dart';
import 'package:flutter/material.dart';

import 'TENG.dart';
import 'VENG.dart';
class Ueng extends StatefulWidget {
  const Ueng({Key? key}) : super(key: key);

  @override
  _UengState createState() => _UengState();
}

class _UengState extends State<Ueng> {
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
          image: AssetImage('assets/images/harflerback.png'),fit: BoxFit.fitHeight
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.topRight,
            child: SizedBox(
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

          SizedBox(
            height: screenheight/1.5,
            width: screenwidth,
            child: GestureDetector(
              child: const Image(image: AssetImage('assets/images/u.png'),),
              onTap: (){player.play('uen.mp3');},
            ),

          ),
          SizedBox(
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
                          const Teng()));},
                ),
                SizedBox(
                  height: screenheight/10,

                  child: GestureDetector(
                    child: const Image(image: AssetImage('assets/images/hoparlor.png'),),
                    onTap: (){player.play('uen.mp3');},
                  ),
                ),
                GestureDetector(
                  child: const Image(image: AssetImage('assets/images/oksag.png'),),
                  onTap: (){Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder:
                              (context) =>
                          const Veng()));},
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
