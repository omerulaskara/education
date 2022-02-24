import 'package:abcegitim/TileModel.dart';

String selectedTile = "";
late int selectedIndex ;
bool selected = true;
int points = 0;

List<TileModel> myPairs = <TileModel>[];
List<bool> clicked = <bool>[];

List<bool> getClicked(){

  List<bool> yoClicked = <bool>[];
  List<TileModel> myairs = <TileModel>[];
  myairs = getPairs();
  for(int i=0;i<myairs.length;i++){
    yoClicked[i] = false;
  }

  return yoClicked;
}

List<TileModel>  getPairs(){

  List<TileModel> pairs = <TileModel>[];

  TileModel tileModel =  TileModel(isSelected: false, imageAssetPath: '');

  //1
  tileModel = TileModel(imageAssetPath: 'fox', isSelected: false);
  tileModel.setImageAssetPath("assets/fox.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  //2
  tileModel = TileModel(imageAssetPath: 'hippo', isSelected: false);
  tileModel.setImageAssetPath("assets/hippo.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  //3
  tileModel = TileModel(imageAssetPath: 'horse', isSelected: false);
  tileModel.setImageAssetPath("assets/horse.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  //4
  tileModel = TileModel(imageAssetPath: 'monkey', isSelected: false);
  tileModel.setImageAssetPath("assets/monkey.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);


  return pairs;
}

List<TileModel>  getQuestionPairs() {
  List<TileModel> pairs = <TileModel>[];

  TileModel tileModel = TileModel(imageAssetPath: '', isSelected: false);

  //1

  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);


  //2
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);


  //3
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  //4
  tileModel.setImageAssetPath("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);





  return pairs;
}
