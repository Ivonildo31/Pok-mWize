import 'package:flutter/material.dart';

import 'app/pages/login/login_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Wize Poke',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          accentColor: Colors.orange,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: LoginPage());
  }
}
