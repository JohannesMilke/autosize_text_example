import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class StepGranularityWidget extends StatefulWidget {
  @override
  _StepGranularityWidgetState createState() => _StepGranularityWidgetState();
}

class _StepGranularityWidgetState extends State<StepGranularityWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: buildFontSizeSteps(),
    );
  }

  Widget buildFontSizeSteps() => AutoSizeText(
        'This Text decreases by Font Size steps.',
        minFontSize: 20,
        stepGranularity: 10,
        style: TextStyle(fontSize: 60),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      );
}
