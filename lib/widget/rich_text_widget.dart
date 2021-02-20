import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class RichTextWidget extends StatefulWidget {
  @override
  _RichTextWidgetState createState() => _RichTextWidgetState();
}

class _RichTextWidgetState extends State<RichTextWidget> {
  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildRichText(),
          ],
        ),
      );

  AutoSizeText buildRichText() {
    return AutoSizeText.rich(
      TextSpan(
        text: 'This ',
        children: [
          TextSpan(
            text: 'Text ',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          TextSpan(text: 'is a responsive '),
          TextSpan(
              text: 'RichText',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 90)),
        ],
      ),
      style: TextStyle(fontSize: 48),
      minFontSize: 30,
      maxLines: 1,
    );
  }
}
