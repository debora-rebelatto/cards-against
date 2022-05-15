import 'package:flutter/material.dart';

class GameCard extends StatefulWidget {
  bool isQuestion;
  String text;

  GameCard({
    Key key,
    this.isQuestion,
    this.text
  }) : super(key: key);

  @override
  State<GameCard> createState() => _GameCardState();
}

class _GameCardState extends State<GameCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        color: widget.isQuestion ? Color(0xFF262626) : Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFF262626),
          width: 0.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(widget.text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: widget.isQuestion ? Colors.white : Colors.black,
            fontSize: 20
          ),
        ),
      ),
    );
  }
}