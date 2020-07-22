import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptativeButton extends StatelessWidget {
  final String text;
  final Function handler;

  AdaptativeButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor),
            ),
            onPressed: handler)
        : FlatButton(
            onPressed: handler,
            child: Text(
              'Choose Date',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor),
            ),
            textColor: Theme.of(context).primaryColor,
          );
  }
}
