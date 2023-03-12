import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClothesAnswer extends StatelessWidget {

  final String _answerContent;
  final VoidCallback onTapping;
  const ClothesAnswer(this.onTapping, this._answerContent, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: Colors.green),
      child: Text(_answerContent,
        style: TextStyle(
          color: Colors.red,
        ),),
      onPressed: onTapping,
    );
  }

}