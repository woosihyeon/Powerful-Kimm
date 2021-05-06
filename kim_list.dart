import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'kim.dart';

class KimList {
  List<Kim> _kimList = List();
  int _index = -1;

  KimList(){
    _kimList.add(Kim(AssetImage('images/kim1.jpg')));
    _kimList.add(Kim(AssetImage('images/kim2.jpg')));
    _kimList.add(Kim(AssetImage('images/kim3.jpg')));
    _kimList.add(Kim(AssetImage('images/kim4.jpg')));

    _kimList.shuffle();
  }

  List<Kim> get kim => _kimList;
  int get length => _kimList.length;

  Kim get nextKim{
    _index++;
    if(_index >=length) return null;
    return _kimList[_index];
  }

  bool get isEnd {
    if((_index + 1)==length){
      return true;
    }else {
      return false;
    }
  }

}

