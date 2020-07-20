import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:vitalik/models/user_model.dart';
import 'package:vitalik/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
              return HomeScreen();
            }));
          },
          child: Text('login_with_google').tr(),
        ),
      ),
    );
  }
}
