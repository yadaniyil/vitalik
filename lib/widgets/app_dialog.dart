import 'package:flutter/material.dart';

class AppDialog extends StatelessWidget {
  final String title;
  final Widget titleIcon;
  final Widget content;
  final List<Widget> buttons;
  final MainAxisAlignment buttonsAxisAlignment;
  final double titleFontSize;
  final EdgeInsets contentPadding;

  AppDialog({
    @required this.title,
    this.titleIcon,
    this.content,
    this.buttons,
    this.buttonsAxisAlignment = MainAxisAlignment.end,
    this.titleFontSize = 18,
    this.contentPadding,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      contentPadding: EdgeInsets.zero,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).accentColor,
                  Theme.of(context).accentColor,
                ],
              ),
            ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: titleIcon,
                ),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: titleFontSize,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: contentPadding ?? EdgeInsets.symmetric(horizontal: 16.0),
            child: content ?? Container(),
          ),
          if (buttons != null)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Row(
                mainAxisAlignment: buttonsAxisAlignment,
                children: buttons,
              ),
            ),
        ],
      ),
    );
  }
}

class DialogButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const DialogButton({Key key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 20),
        child: Text(title, style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
