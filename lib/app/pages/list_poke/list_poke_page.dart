import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pokewize/app/pages/login/login_page.dart';
import 'package:pokewize/app/widgets/nav_bar_widget.dart';

class ListPokePage extends StatefulWidget {
  @override
  _ListPokePageState createState() => _ListPokePageState();
}

class _ListPokePageState extends State<ListPokePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: body(context),
    );
  }

  @override
  Widget body(BuildContext context) {
    double _deviceWidth = MediaQuery.of(context).size.width;
    // double _deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      //bottomNavigationBar: NavBarWidget(),
      appBar: AppBar(
        title: Image.asset(
          'assets/img/logo.png',
        ),
        centerTitle: true,
        backgroundColor: Color(0xff5333ed),
        toolbarHeight: 80.0,
      ),
      backgroundColor: Color(0xffEFF3F6),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(
            _deviceWidth * 0.05, 20, _deviceWidth * 0.05, 20),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Navigator.of(context).pushNamed('/');
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => LoginPage(
                  // model: model
                  )));
        },
        label: Text(
          "Capturar Pokémom",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.normal),
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}
