import 'dart:io';
import 'package:audioplayers/audioplayers.dart';
import 'package:abcegitim/anasayfa.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:abcegitim/itemModel.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  static AudioCache player = AudioCache();
  AudioPlayer advancedPlayer = AudioPlayer();
  String? localFilePath;
  String? localAudioCacheURI;

  late List<ItemModel> items;
  late List<ItemModel> items2;
  late int score;
  late bool gameOver;

  initGame() {
    gameOver = false;
    score = 0;
    items = [
      ItemModel(value: 'aslan', name: 'Aslan ', img: 'assets/images/lion.png'),
      ItemModel(value: 'panda', name: 'Panda', img: 'assets/images/pandaa.png'),
      ItemModel(value: 'deve', name: 'Deve', img: 'assets/images/camel.png'),
      ItemModel(value: 'köpek', name: 'Köpek', img: 'assets/images/kopek.png'),
      ItemModel(value: 'kedi', name: 'Kedi', img: 'assets/images/kedi.png'),
      ItemModel(value: 'at', name: 'At', img: 'assets/images/horse.png'),
      ItemModel(value: 'kaplan', name: 'Kaplan', img: 'assets/images/kaplan.png'),
      ItemModel(value: 'tavşan', name: 'Tavşan', img: 'assets/images/tavsan.png'),
      ItemModel(value: 'tilki', name: 'Tilki', img: 'assets/images/fox.png'),
    ];
    items2 = List<ItemModel>.from(items);

    items.shuffle();
    items2.shuffle();
  }

  @override
  void initState() {
    super.initState();
    initGame();
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
    if (items.isEmpty) gameOver = true;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'PUAN: ',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        TextSpan(
                          text: '$score',
                          style: Theme.of(context)
                              .textTheme
                              .headline2
                              ?.copyWith(color: Colors.teal),
                        ),
                      ],
                    ),
                  ),
                ),
                ElevatedButton.icon(
                onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:
                            (context) =>
                        const Anasayfa()));player.clearAll();},
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.yellowAccent,
                ),
                label: const Text(
                  'Çıkış',
                  style: TextStyle(color: Colors.yellowAccent,shadows: <Shadow>[Shadow(offset: Offset(0.5, 0.5))]),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.red),
                ),
              ),
              ],),


              if (!gameOver)
                Row(
                  children: [
                    const Spacer(),
                    Column(
                      children: items.map((item) {
                        return Container(height: MediaQuery.of(context).size.height/14,
                          margin: const EdgeInsets.all(8),
                          child: Draggable<ItemModel>(
                            data: item,
                            childWhenDragging: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(item.img),
                              radius: 50,
                            ),
                            feedback: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(item.img),
                              radius: 30,
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(item.img),
                              radius: 30,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    const Spacer(flex: 2),
                    Column(
                      children: items2.map((item) {
                        return DragTarget<ItemModel>(
                          onAccept: (receivedItem) {
                            if (item.value == receivedItem.value) {
                              setState(() {
                                items.remove(receivedItem);
                                items2.remove(item);
                              });
                              score += 10;
                              item.accepting = false;

                              player.play('true.wav');
                            } else {
                              setState(() {
                                score -= 5;
                                item.accepting = false;
                                player.play('false.wav');
                              });
                            }
                          },
                          onWillAccept: (receivedItem) {
                            setState(() {
                              item.accepting = true;
                            });
                            return true;
                          },
                          onLeave: (receivedItem) {
                            setState(() {
                              item.accepting = false;
                            });
                          },
                          builder: (context, acceptedItems, rejectedItems) =>
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: item.accepting
                                        ? Colors.grey[400]
                                        : Colors.deepOrangeAccent,
                                  ),
                                  alignment: Alignment.center,
                                  height:
                                  MediaQuery.of(context).size.height / 14,
                                  width: MediaQuery.of(context).size.width / 3,
                                  margin: const EdgeInsets.all(8),
                                  child: Text(
                                    item.name,
                                    style:
                                    Theme.of(context).textTheme.headline6,
                                  )),
                        );
                      }).toList(),
                    ),
                    const Spacer(),
                  ],
                ),
              if (gameOver)
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Oyun Bitti',
                          style: Theme.of(context).textTheme.headline6?.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          result(),
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                    ],
                  ),
                ),
              if (gameOver)
                Container(
                  height: MediaQuery.of(context).size.width / 10,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(8)),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          initGame();
                        });
                      },
                      child: const Text(
                        'Yeni Oyun',
                        style: TextStyle(color: Colors.white),
                      )),
                )
            ],
          ),
        ),
      ),
    );
  }

  //Functions:

  String result() {
    if (score == 90) {
      player.play('success.wav');
      return 'Harikasın!';
    } else {
      player.play('tryAgain.wav');
      return 'Daha iyi bir puan için tekrar oyna';
    }
  }
}