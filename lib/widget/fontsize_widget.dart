import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class FontSizeWidget extends StatefulWidget {
  @override
  _FontSizeWidgetState createState() => _FontSizeWidgetState();
}

class _FontSizeWidgetState extends State<FontSizeWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildMinimumText(),
          const SizedBox(height: 32),
          buildMinimumAndLinesText(),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget buildMinimumText() => Container(
        color: Colors.red,
        child: AutoSizeText(
          'This Text has a Minimum Font Size and 1 Line.',
          minFontSize: 32,
          maxFontSize: 48,
          style: TextStyle(fontSize: 48),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      );

  Widget buildMinimumAndLinesText() => Container(
        color: Colors.blue,
        child: AutoSizeText(
          'This Text has a Minimum Font Size and max. 2 Lines.',
          minFontSize: 32,
          style: TextStyle(fontSize: 48),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      );
}
