import 'package:flutter/material.dart';
import 'package:select_app/kim.dart';

class SelecButton extends StatelessWidget {

  SelecButton(this._onTap,this._kimage,this._where);

  final bool _where;
  final VoidCallback _onTap;
  final Kim _kimage;




  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: _where == true ? Colors.black12 : Colors.white,
        child: InkWell(
          onTap: ()=> _onTap(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image(
              image: _kimage.kimage,
            ),
          ),
        ),
      ),
    );
  }
}


