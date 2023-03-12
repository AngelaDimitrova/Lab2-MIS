import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClothesQuestion extends StatelessWidget {

  final String _questionContent;
  ClothesQuestion(this._questionContent, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(_questionContent,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontSize: 20,
            color: Colors.blue
        ),
      )
    );
  }

}
