import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:select_app/selectbutton.dart';
import 'kim.dart';
import 'kim_list.dart';
import 'select_Image.dart';

class Cardpro extends StatefulWidget {
  @override
  _CardproState createState() => _CardproState();
}

class _CardproState extends State<Cardpro> {
  KimList _kimList = KimList();

  Kim _selectImage;

  Kim _kimage1;
  Kim _kimage2;

  bool _where;

  bool overlaySouldBevisible = false;

  @override
  void initState() {
    super.initState();
    _kimage1 = _kimList.nextKim;
    _kimage2 = _kimList.nextKim;
  }

  void handleSelec(Kim kimage, bool where) {
    _selectImage = kimage;
    _where = where;
    this.setState(() {
      overlaySouldBevisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Row(
          children: <Widget>[
            SelecButton(() => handleSelec(_kimage1, true), _kimage1, true),
            SelecButton(() => handleSelec(_kimage2, false), _kimage2, false),
          ],
        ),
        overlaySouldBevisible == true
            ? SelectImage(_selectImage, _kimList.isEnd, () {
                if (_kimList.isEnd == false) {
                  this.setState(() {
                    overlaySouldBevisible = false;
                    if (_where == true) {
                      _kimage1 = _selectImage;
                      _kimage2 = _kimList.nextKim;
                    } else {
                      _kimage1 = _selectImage;
                      _kimage2 = _kimList.nextKim;
                    }
                  });
                  return;
                }
              })
            : Container(),
      ],
    );
  }
}
