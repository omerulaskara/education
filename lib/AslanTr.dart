import 'package:audioplayers/audioplayers.dart';
import 'package:abcegitim/anasayfa.dart';
import 'package:flutter/material.dart';

import 'AriTr.dart';
import 'AtTr.dart';

class AslanTr extends StatefulWidget {
  const AslanTr({Key? key}) : super(key: key);

  @override
  _AslanTrState createState() => _AslanTrState();
}

class _AslanTrState extends State<AslanTr> {
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
            height: screenheight/4,
            child: GestureDetector(
              child: const Image(image: const AssetImage('assets/images/aslan.png'),),
              onTap: (){player.play('a.mp3');},
            ),

          ),
          SizedBox(
            height: screenheight/10,
            child: GestureDetector(
              child: const Image(image: const AssetImage('assets/images/ok.png'),),
            ),

          ),
          SizedBox(
            height: screenheight/4,
            child: GestureDetector(
              child: const Image(image: const AssetImage('assets/images/a.png'),),
              onTap: (){player.play('a.mp3');},
            ),

          ),
          SizedBox(
            height: screenheight/10,
            width: screenwidth-50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: const Image(image: const AssetImage('assets/images/oksol.png'),),
                  onTap: (){Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder:
                              (context) =>
                          const AriTr()));},
                ),
                SizedBox(
                  height: screenheight/10,

                  child: GestureDetector(
                    child: const Image(image: const AssetImage('assets/images/hoparlor.png'),),
                    onTap: (){player.play('a.mp3');},
                  ),
                ),
                GestureDetector(
                  child: const Image(image: const AssetImage('assets/images/oksag.png'),),
                  onTap: (){Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder:
                              (context) =>
                          const AtTrTr()));},
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
