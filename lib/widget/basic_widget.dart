import 'package:flutter/material.dart';

class BasicWidget extends StatefulWidget {
  @override
  _BasicWidgetState createState() => _BasicWidgetState();
}

class _BasicWidgetState extends State<BasicWidget> {
  @override
  Widget build(BuildContext context) => Center(
        child: Padding(
          padding: EdgeInsets.all(64),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildText(),
              const SizedBox(height: 32),
              buildFittedHeightText(),
              const SizedBox(height: 32),
              buildFittedWidthText(),
            ],
          ),
        ),
      );

  Widget buildText() => Text(
        'This Is A Normal Text',
        style: TextStyle(fontSize: 64),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      );

  Widget buildFittedHeightText() => Container(
        color: Colors.red,
        height: 100,
        child: FittedBox(
          child: Text('This Text Is Responsive'),
        ),
      );

  Widget buildFittedWidthText() => Container(
        color: Colors.blue,
        width: MediaQuery.of(context).size.width * 0.5,
        child: FittedBox(
          child: Text('This Text Is Responsive'),
        ),
      );
}
