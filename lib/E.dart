import 'package:audioplayers/audioplayers.dart';
import 'package:abcegitim/D.dart';
import 'package:abcegitim/F.dart';
import 'package:abcegitim/anasayfa.dart';
import 'package:flutter/material.dart';
class Etr extends StatefulWidget {
  const Etr({Key? key}) : super(key: key);

  @override
  _EtrState createState() => _EtrState();
}

class _EtrState extends State<Etr> {
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
            child: GestureDetector(
              child: const Image(image: AssetImage('assets/images/e.png'),),
              onTap: (){player.play('e.mp3');},
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
                          const Dtr()));},
                ),
                SizedBox(
                  height: screenheight/10,

                  child: GestureDetector(
                    child: const Image(image: AssetImage('assets/images/hoparlor.png'),),
                    onTap: (){player.play('e.mp3');},
                  ),
                ),
                GestureDetector(
                  child: const Image(image: AssetImage('assets/images/oksag.png'),),
                  onTap: (){Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder:
                              (context) =>
                          const Ftr()));},
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
