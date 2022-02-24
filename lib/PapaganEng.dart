import 'package:audioplayers/audioplayers.dart';
import 'package:abcegitim/A.dart';
import 'package:abcegitim/anasayfa.dart';
import 'package:flutter/material.dart';

import 'PandaEng.dart';
import 'SincapEng.dart';

class PapaganEng extends StatefulWidget {
  const PapaganEng({Key? key}) : super(key: key);

  @override
  _PapaganEngState createState() => _PapaganEngState();
}

class _PapaganEngState extends State<PapaganEng> {
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
            child: Container(
              height: screenheight/10,
              width: screenwidth/6,
              child: GestureDetector(
                child: Image(image: AssetImage('assets/images/cikis.png'),),
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
            height: screenheight/4,
            child: GestureDetector(
              child: Image(image: AssetImage('assets/images/papagan.png'),),
              onTap: (){player.play('a.mp3');},
            ),

          ),
          Container(
            height: screenheight/10,
            child: GestureDetector(
              child: Image(image: AssetImage('assets/images/ok.png'),),
            ),

          ),
          Container(
            height: screenheight/4,
            child: GestureDetector(
              child: Image(image: AssetImage('assets/images/p.png'),),
              onTap: (){player.play('a.mp3');},
            ),

          ),
          Container(
            height: screenheight/10,
            width: screenwidth-50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Image(image: AssetImage('assets/images/oksol.png'),),
                  onTap: (){Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder:
                              (context) =>
                          const PandaEng()));},
                ),
                Container(
                  height: screenheight/10,

                  child: GestureDetector(
                    child: Image(image: AssetImage('assets/images/hoparlor.png'),),
                    onTap: (){player.play('a.mp3');},
                  ),
                ),
                GestureDetector(
                  child: Image(image: AssetImage('assets/images/oksag.png'),),
                  onTap: (){Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder:
                              (context) =>
                          const SincapEng()));},
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
