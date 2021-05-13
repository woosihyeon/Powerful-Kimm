import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:select_app/kim.dart';
import 'Card_page.dart';

class SelectImage extends StatefulWidget {
  final Kim _kimage;
  final VoidCallback _onTap;
  final bool _last;

  SelectImage(this._kimage,this._last,this._onTap);

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
    _ani = CurvedAnimation(parent: _aniC, curve: Curves.elasticOut);
    _ani.addListener(() => this.setState(() => {}));
    _aniC.forward();
  }

  @override
  void dispose() {
    _aniC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget._last == false) {
      return Material(
        color: Colors.black54,
        child: InkWell(
          onTap: () => widget._onTap(),
          child: Column(
            children: <Widget>[
              Image(image: widget._kimage.kimage),
              Padding(padding: EdgeInsets.only(bottom: 20.0)),
              Text(
                '김무성',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Material(
        color: Colors.blue,
        child: Transform.scale(
          scale: _aniC.value * 1.5,
          child: Column(
            children: <Widget>[
              Text(
                '우승',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,
                ),
              ),
              Image(
                image: widget._kimage.kimage,
              ),
              IconButton(
                  icon: Icon(Icons.arrow_right),
                  color: Colors.white,
                  iconSize: 50.0,
                  onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (BuildContext context) => Cardpro()),
                      (Route route) => route == false)),
            ],
          ),
        ),
      );
    }
  }
}
