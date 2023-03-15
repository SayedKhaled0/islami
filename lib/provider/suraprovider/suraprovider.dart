
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraProvider extends ChangeNotifier{
  List<String>verses=[];
  void loedFile(int index)async{
    String content =await rootBundle.loadString("assets/files/${index+1}.txt");
    List<String>lines=content.split('\n');
    verses=lines;
    notifyListeners();

  }

}