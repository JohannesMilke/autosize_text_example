import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MaxLinesWidget extends StatefulWidget {
  @override
  _MaxLinesWidgetState createState() => _MaxLinesWidgetState();
}

class _MaxLinesWidgetState extends State<MaxLinesWidget> {
  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildOneLine(context),
            const SizedBox(height: 32),
            buildTwoLines(context),
          ],
        ),
      );

  Widget buildOneLine(BuildContext context) {
    final maxLines = 1;

    return Container(
      color: Colors.red,
      width: MediaQuery.of(context).size.width,
      child: AutoSizeText(
        'This Text will fit to maximum $maxLines line. Lorem ipsum.',
        style: TextStyle(fontSize: 48),
        maxLines: maxLines,
      ),
    );
  }

  Widget buildTwoLines(BuildContext context) {
    final maxLines = 2;

    return Container(
      color: Colors.blue,
      width: MediaQuery.of(context).size.width,
      child: AutoSizeText(
        'This Text will fit to maximum $maxLines lines. Lorem ipsum.',
        style: TextStyle(fontSize: 48),
        maxLines: maxLines,
      ),
    );
  }
}
