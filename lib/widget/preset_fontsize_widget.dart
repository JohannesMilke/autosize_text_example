import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class PresetFontSizeWidget extends StatefulWidget {
  @override
  _PresetFontSizeWidgetState createState() => _PresetFontSizeWidgetState();
}

class _PresetFontSizeWidgetState extends State<PresetFontSizeWidget> {
  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildPresetText(),
            const SizedBox(height: 32),
            buildPresetFixedText(),
          ],
        ),
      );

  Widget buildPresetText() => Container(
        color: Colors.red,
        child: AutoSizeText(
          'This Text has a Preset Font Size.',
          presetFontSizes: [48, 40, 32],
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      );

  Widget buildPresetFixedText() => Container(
        color: Colors.blue,
        constraints: BoxConstraints(minWidth: 180),
        width: MediaQuery.of(context).size.width * 0.3,
        child: AutoSizeText(
          'Some Title',
          presetFontSizes: [48, 40, 32],
          maxLines: 1,
          style: TextStyle(fontWeight: FontWeight.bold),
          overflow: TextOverflow.ellipsis,
        ),
      );
}
