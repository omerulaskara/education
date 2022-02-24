import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'TileModel.dart';
import 'data.dart';

class PuzzleAna extends StatefulWidget {
  const PuzzleAna({Key? key}) : super(key: key);

  @override
  _PuzzleAnaState createState() => _PuzzleAnaState();
}

class _PuzzleAnaState extends State<PuzzleAna> {
  List<TileModel> gridViewTiles = <TileModel>[];
  List<TileModel> questionPairs = <TileModel>[];

  @override
  void initState() {
    super.initState();
    reStart();
  }
  void reStart() {

    myPairs = getPairs();
    myPairs.shuffle();

    gridViewTiles = myPairs;
    Future.delayed(const Duration(seconds: 5), () {
// Here you can write your code
      setState(() {
        if (kDebugMode) {
          print("2 seconds done");
        }
        // Here you can write your code for open new view
        questionPairs = getQuestionPairs();
        gridViewTiles = questionPairs;
        selected = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              points != 400 ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "$points/400",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const Text(
                    "Puan",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                ],
              ) : Container(),
              const SizedBox(
                height: 20,
              ),
              points != 400 ? GridView(
                shrinkWrap: true,
                //physics: ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    mainAxisSpacing: 0.0, maxCrossAxisExtent: 100.0),
                children: List.generate(gridViewTiles.length, (index) {
                  return Tile(
                    imagePathUrl: gridViewTiles[index].getImageAssetPath(),
                    tileIndex: index,
                    parent: this,
                  );
                }),
              ) : Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        points = 0;
                        reStart();
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 200,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: const Text("Tekrar", style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500
                      ),),
                    ),
                  ),
                  const SizedBox(height: 20,),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
// ignore: must_be_immutable
class Tile extends StatefulWidget {
  String imagePathUrl;
  int tileIndex;
  _PuzzleAnaState parent;

  Tile({Key? key, required this.imagePathUrl, required this.tileIndex, required this.parent}) : super(key: key);

  @override
  _TileState createState() => _TileState();
}
class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!selected) {
          setState(() {
            myPairs[widget.tileIndex].setIsSelected(true);
          });
          if (selectedTile != "") {
            /// testing if the selected tiles are same
            if (selectedTile == myPairs[widget.tileIndex].getImageAssetPath()) {
              if (kDebugMode) {
                print("add point");
              }
              points = points + 100;
              if (kDebugMode) {
                print(selectedTile + " thishis" + widget.imagePathUrl);
              }

              TileModel tileModel = TileModel(isSelected: false,imageAssetPath: '');
              if (kDebugMode) {
                print(widget.tileIndex);
              }
              selected = true;
              Future.delayed(const Duration(seconds: 1), () {
                tileModel.setImageAssetPath("");
                myPairs[widget.tileIndex] = tileModel;
                if (kDebugMode) {
                  print(selectedIndex);
                }
                myPairs[selectedIndex] = tileModel;
                widget.parent.setState(() {});
                setState(() {
                  selected = false;
                });
                selectedTile = "";
              });
            } else {
              if (kDebugMode) {
                print(selectedTile +
                  " thishis " +
                  myPairs[widget.tileIndex].getImageAssetPath());
              }
              if (kDebugMode) {
                print("wrong choice");
              }
              if (kDebugMode) {
                print(widget.tileIndex);
              }
              if (kDebugMode) {
                print(selectedIndex);
              }
              selected = true;
              Future.delayed(const Duration(seconds: 1), () {
                widget.parent.setState(() {
                  myPairs[widget.tileIndex].setIsSelected(false);
                  myPairs[selectedIndex].setIsSelected(false);
                });
                setState(() {
                  selected = false;
                });
              });

              selectedTile = "";
            }
          } else {
            setState(() {
              selectedTile = myPairs[widget.tileIndex].getImageAssetPath();
              selectedIndex = widget.tileIndex;
            });

            if (kDebugMode) {
              print(selectedTile);
            }
            if (kDebugMode) {
              print(selectedIndex);
            }
          }
        }
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        child: myPairs[widget.tileIndex].getImageAssetPath() != ""
            ? Image.asset(myPairs[widget.tileIndex].getIsSelected()
            ? myPairs[widget.tileIndex].getImageAssetPath()
            : widget.imagePathUrl)
            : Container(
          color: Colors.white,
          child: Image.asset("assets/correct.png"),
        ),
      ),
    );
  }
}

