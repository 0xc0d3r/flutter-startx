import 'package:flutter/material.dart';
import 'package:flutter_usecases/constants/AppStrings.dart';

import '../../themes/Images.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logo = Image.asset(appLogo, width: 150, height: 150);
    return Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(padding: const EdgeInsets.only(bottom: 10.0), child: logo),
          new Text(AppStrings["home"]["welcomeTitle"],
              style: TextStyle(fontSize: 24.0)),
          Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(AppStrings["home"]["welcomeSubTitle"],
                  style: TextStyle(fontSize: 18.0))),
        ],
      ),
    );
  }
}
