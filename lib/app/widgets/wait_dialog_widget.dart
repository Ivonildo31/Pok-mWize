import 'package:flutter/material.dart';

Future<bool> waitDialogWidget(BuildContext context,
    {String title, String text}) async {

  bool value;

  await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('$title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('$text'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancelar', style: TextStyle(color: Colors.redAccent),),
              onPressed: () {
                Navigator.of(context).pop();
                value = false;
              },
            ),
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
                value = true;
              },
            )
          ],
        );
      });

  return value;
}
