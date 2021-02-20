import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class OverflowReplacementWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildReplaceByWidthText(),
            const SizedBox(height: 32),
            buildReplaceByHeightText(),
          ],
        ),
      );

  Widget buildReplaceByWidthText() {
    final longText =
        'This is a long description that will be displayed as long as it fits.';
    final shortText = 'This is a shorter description.';
    final style = TextStyle(fontSize: 32);

    return Container(
      color: Colors.red,
      child: AutoSizeText(
        longText,
        maxLines: 1,
        minFontSize: 32,
        style: style,
        overflowReplacement: Text(shortText, style: style),
      ),
    );
  }

  Widget buildReplaceByHeightText() {
    final longText =
        'This is a long description that will be displayed as long as it fits.';
    final shortText = 'This is a shorter description.';
    final style = TextStyle(fontSize: 32);

    return Container(
      color: Colors.blue,
      child: AutoSizeText(
        longText,
        maxLines: 1,
        minFontSize: 20,
        style: style,
        overflowReplacement: Text(shortText, style: style),
      ),
    );
  }
}
