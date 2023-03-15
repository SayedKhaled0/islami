
import 'package:flutter/material.dart';

class SebhaProvider extends ChangeNotifier{
   int counter=0;
    int index =0;


  List <String>SebhaStrings = [
    "سبحان الله",
    "الحمد لله",
    "لا حول ولا قوةالا بالله",
    "لا اله الا الله",
    "الله اكبر",
  ];

  void incrementCounter() {



      counter++;

      if (index == 0 && counter == 34) {
        index = 1;
        counter = 0;
      } else if (index == 1 && counter == 33) {
        index = 2;
        counter = 0;
      } else if (index == 2 && counter == 33) {
        index = 3;
        counter = 0;
      } else if (index == 3 && counter == 33) {
        index = 4;
        counter = 0;
      } else if (index == 4 && counter == 33) {
        index = 0;
        counter = 0;
      }
      notifyListeners();
    }
  }


