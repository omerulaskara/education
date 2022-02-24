import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'AvukatEng.dart';
import 'DortEng.dart';
import 'IkiEng.dart';
import 'PilotEng.dart';
import 'anasayfa.dart';

class ucEng extends StatefulWidget {
  const ucEng({Key? key}) : super(key: key);

  @override
  _ucEngState createState() => _ucEngState();
}

class _ucEngState extends State<ucEng> {
  static AudioCache player = AudioCache();
  AudioPlayer advancedPlayer = AudioPlayer();
  String? localFilePath;
  String? localAudioCacheURI;
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return SafeArea(child: Container(
      decoration: const BoxDecoration(color: Colors.white,
          image: DecorationImage(
              image: AssetImage('assets/images/sayi.png'),fit: BoxFit.fitHeight
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
            height: screenheight/2,
            child: GestureDetector(
              child: const Image(image: AssetImage('assets/images/uc.png'),fit: BoxFit.cover),
              onTap: (){player.play('a.mp3');},
            ),

          ),
          SizedBox(
              height: screenheight/7,
              child: const Text('THREE',style: TextStyle(fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                  color: Colors.blueAccent,
                  fontFamily: 'Storm',
                  shadows: <Shadow>[Shadow(offset: Offset(1.0, 1.0))]),)

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
                          const ikiEng()));},
                ),
                SizedBox(
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
                          const dortEng()));},
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
