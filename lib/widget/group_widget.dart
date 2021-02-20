import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class GroupWidget extends StatefulWidget {
  @override
  _GroupWidgetState createState() => _GroupWidgetState();
}

class _GroupWidgetState extends State<GroupWidget> {
  bool hasGroups = false;
  final autoSizeGroup = AutoSizeGroup();

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AutoSizeText(
              'This Text is in a group and receives smallest font size of members.',
              group: hasGroups ? autoSizeGroup : null,
              style: TextStyle(
                fontSize: 32,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
            ),
            SizedBox(height: 32),
            AutoSizeText(
              'This Text is in a group and receives smallest font size of members.',
              group: hasGroups ? autoSizeGroup : null,
              style: TextStyle(fontSize: 48, color: Colors.red),
              maxLines: 2,
            ),
            SizedBox(height: 32),
            buildSwitch(),
          ],
        ),
      );

  Widget buildSwitch() => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Activate',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Transform.scale(
            scale: 1.5,
            child: Switch.adaptive(
              value: hasGroups,
              onChanged: (value) => setState(() => this.hasGroups = value),
            ),
          ),
        ],
      );
}
