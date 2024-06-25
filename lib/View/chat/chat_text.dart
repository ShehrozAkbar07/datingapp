import 'package:flutter/material.dart';

class ChatText extends StatefulWidget {
  String texxt;
  dynamic val;
  final Color color;
  final Color textcolor;

  ChatText(
      {required this.texxt,
      required this.val,
      required this.color,
      required this.textcolor});

  @override
  State<ChatText> createState() => _ChatTextState();
}

class _ChatTextState extends State<ChatText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: widget.val,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.80,
        ),
        padding: const EdgeInsets.all(10),
        // margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          widget.texxt,
          style: TextStyle(color: widget.textcolor),
        ),
      ),
    );
  }
}
