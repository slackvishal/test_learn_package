library test_learn_package;

import 'package:flutter/material.dart';

class TestLearnPackage {
  static Future showCustomAlertBox({
    @required BuildContext context,
    @required Widget willDisplayWidget,
    @required Widget smallText,
  }) {
    assert(context != null, "context is null!!");
    assert(willDisplayWidget != null, "willDisplayWidget is null!!");
    assert(smallText!= null, "smallText is null!!");
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                willDisplayWidget,
                smallText,
                MaterialButton(
                  color: Colors.white30,
                  child: Text('close alert'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
            elevation: 10,
          );
        });
  }
}
