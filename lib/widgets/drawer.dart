import 'package:flutter/material.dart';

import '../constants/RouteConstants.dart';
import 'drawer_item.dart';

class NavigationDrawer extends StatelessWidget {
  final drawerItems = [
    new DrawerItem("Charts", Icons.pie_chart),
    new DrawerItem("Graphs", Icons.show_chart),
    new DrawerItem("Startup Name Generator", Icons.adjust)
  ];

  @override
  Widget build(BuildContext context) {
    var drawerOptions = <Widget>[];
    for (var i = 0; i < drawerItems.length; i++) {
      var d = drawerItems[i];
      drawerOptions.add(new ListTile(
          leading: new Icon(d.icon),
          title: new Text(
            d.title,
            style: new TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
          ),
          onTap: () {
            Navigator.of(context).pop();
            switch (i) {
              case 0:
                Navigator.of(context).pushNamed(charts);
                break;
              case 1:
                Navigator.of(context).pushNamed(graphs);
                break;
              case 2:
                Navigator.of(context).pushNamed(startupNameGenerator);
                break;
            }
          }));
    }

    return new Column(
      children: <Widget>[
        new UserAccountsDrawerHeader(
            accountName: new Text(
              "Anesh",
              style: new TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
            ),
            accountEmail: new Text(
              "anesh@ibhubs.co",
              style: new TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
            )),
        new Column(
          children: drawerOptions,
        )
      ],
    );
  }
}
