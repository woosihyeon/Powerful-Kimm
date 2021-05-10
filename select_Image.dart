import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:select_app/kim.dart';
import 'kim_list.dart';

class SelectImage extends StatefulWidget {
  final Kim _kimage;
  final VoidCallback _onTap;
  final bool _last;

  SelectImage(this._kimage, this._onTap, this._last);

  @override
  _SelectImageState createState() => _SelectImageState();
}

class _SelectImageState extends State<SelectImage>
    with SingleTickerProviderStateMixin {
  Animation _ani;
  AnimationController _aniC;

  @override
  void initState() {
    super.initState();
    _aniC =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    _ani = CurvedAnimation(parent: _aniC);
    _ani.addListener(()=>this.setState(()=> {}));
    _aniC.forward();
  }

  @override
  void dispose() {
    _aniC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
