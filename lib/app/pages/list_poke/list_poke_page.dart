import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pokewize/app/widgets/side_bar_widget.dart';

class ListPokePage extends StatefulWidget {
  @override
  _ListPokePageState createState() => _ListPokePageState();
}

class _ListPokePageState extends State<ListPokePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBarWidget(),
      appBar: AppBar(
        title: Image.asset(
          'assets/img/logo.png',
        ),
        centerTitle: true,
        backgroundColor: Color(0xff5333ed),
        toolbarHeight: 80.0,
      ),
      backgroundColor: Colors.blueGrey[50],
      body: body(context),
    );
  }

  @override
  Widget body(BuildContext context) {
    double _deviceWidth = MediaQuery.of(context).size.width;
    double _deviceHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(_deviceWidth * 0.05, _deviceHeight * 0.05,
          _deviceWidth * 0.05, _deviceHeight * 0.05),
      child: Container(
        child: Card(
          child: Container(
            padding: EdgeInsets.fromLTRB(
                _deviceWidth * 0.05, 32, _deviceWidth * 0.05, 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/img/pikatchu.png'),
                  radius: 100.0,
                ),
                Container(
                  child: Text(
                    'Pokasjhdfjkdsakjfh',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        //   child: Positioned(
        //     child: Align(
        //   alignment: Alignment.bottomCenter,
        //   child: InkWell(
        //     onTap: () async {

        //     },
        //     child: Container(
        //       padding: EdgeInsets.only(top: 12, bottom: 12),
        //       margin: EdgeInsets.only(bottom: 8),
        //       decoration: BoxDecoration(
        //           color: Theme.of(context).primaryColor,
        //           borderRadius: BorderRadius.circular(10)),
        //       width: _deviceWidth * 0.9,
        //       height: 64,
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Text(
        //             'CAPTURAR POKÉMON',
        //             style: TextStyle(
        //                 fontSize: 24,
        //                 color: Colors.white,
        //                 fontWeight: FontWeight.bold),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // )),
      ),
    );
  }
}
