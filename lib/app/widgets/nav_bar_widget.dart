import 'package:flutter/material.dart';
import 'package:pokewize/app/pages/list_poke/list_poke_page.dart';
import 'package:pokewize/app/pages/login/login_page.dart';

import 'package:pokewize/app/widgets/wait_dialog_widget.dart';

class NavBarWidget extends StatefulWidget {
  @override
  _NavBarWidgetState createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  int _currentIndex = 0;

  void _switchNavBar(int index) async {
    switch (index) {
      case 0:
        if (await waitDialogWidget(context,
            title: 'Deseja realmente deseja sair dessa tela?', text: '')) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => ListPokePage()));
          setState(() {
            _currentIndex = index;
          });
        }
        break;
      case 1:
        if (await waitDialogWidget(context,
            title: 'Deseja realmente sair dessa tela?', text: '')) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => Container()));
          setState(() {
            _currentIndex = index;
          });
        }
        break;
      case 2:
        if (await waitDialogWidget(context,
            title: 'Deseja realmente sair?', text: '')) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => LoginPage()));
          setState(() {
            _currentIndex = index;
          });
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined), label: 'Início'),
        BottomNavigationBarItem(
            icon: Icon(Icons.info_outlined), label: 'Sobre'),
        BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app_outlined), label: 'Sair')
      ],
      currentIndex: _currentIndex,
      selectedItemColor: Theme.of(context).accentColor,
      onTap: _switchNavBar,
    );
  }
}
