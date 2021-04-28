import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
	final title;
	final action;
  const ActionButton({Key key, String this.title, void Function() this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: MaterialButton(
          onPressed: this.action,
          padding: EdgeInsets.all(20),
          child: Text(this.title),
          color: Colors.red,
          textColor: Colors.white,
        ),
      ),
    );
  }
}