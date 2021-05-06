import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:select_app/selectbutton.dart';
import 'constants.dart';
import 'kim.dart';
import 'kim_list.dart';

class Cardpro extends StatefulWidget {
  @override
  _CardproState createState() => _CardproState();
}

class _CardproState extends State<Cardpro> {
  KimList _kimList = KimList();

  Kim _selectkimage;

  Kim _kimage1;
  Kim _kimage2;

  bool overlaySouldBevisible = false;

  @override
  void initState() {
    super.initState();
    _kimage1 = _kimList.nextKim;
    _kimage2 = _kimList.nextKim;
  }

  void handleSelec(Kim kimage) {
    _selectkimage = kimage;
    this.setState(() {
      overlaySouldBevisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('최강 김무성'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SelecButton(() => handleSelec(_kimage1), _kimage1),
            SizedBox(
              width: 10.0,
            ),
            SelecButton(() => handleSelec(_kimage2), _kimage2),
          ],
        ),
      ),
    );
  }
}
