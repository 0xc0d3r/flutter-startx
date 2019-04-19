import 'package:flutter/material.dart';

import '../widgets/drawer.dart';
import '../widgets/home/welcome.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("Home")),
      drawer: Drawer(child: NavigationDrawer()),
      body: Center(
        child: Welcome(),
      ),
    );
  }
}
