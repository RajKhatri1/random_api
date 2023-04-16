
import 'dart:math';

import 'package:flutter/material.dart';

import '../../utils/apihelper/apihelper.dart';
import '../homepage/modal/Homemodal.dart';

class Homeprovider extends ChangeNotifier
{
  Future<RandomPerson?> findRandomPerson()
  async {
    return await ApiHelper().randomPersonApi();
  }



  List femaleImg = [
    "assets/female/women1.jpg",
    "assets/female/women2.jpg",
    "assets/female/women3.jpg",
  ];

  List maleImg = [
    "assets/male/male1.jpg",
    "assets/male/male2.jpg",
    "assets/male/male3.jpg",
  ];
  int index = 0;
  void changeIndex()
  {
    Random randomNum = Random();
    index = randomNum.nextInt(5);
    notifyListeners();
  }

}