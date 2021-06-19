import 'package:flutter/material.dart';

class Animal {
  String imagePath;
  String animalName;
  String kind;
  bool flyExist = false;

//@required => 함수를 호출할때 꼭 전달해야 하는 값 을 나타내는 어노테이션
  Animal(
      {@required this.animalName,
        @required this.kind,
        @required this.imagePath,
        this.flyExist});
}
