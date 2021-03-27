import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pokewize/app/pages/list_poke/list_poke_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _email = new TextEditingController(text: '');
  TextEditingController _password = new TextEditingController(text: '');
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5333ed),
      body: body(context),
    );
  }

  Widget body(BuildContext context) {
    double _deviceWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                _deviceWidth * 0.1, 0, _deviceWidth * 0.1, 0),
            child: Image.asset(
              'assets/img/logo.png',
              //color: Theme.of(context).primaryColor,
            ),
          ),
          Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      _deviceWidth * 0.1, 64, _deviceWidth * 0.1, 0),
                  child: TextFormField(
                    controller: _email,
                    decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderSide: const BorderSide(
                              color: Color(0xff5333ed), width: 0.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                new BorderSide(width: 1, color: Colors.white)),
                        filled: true,
                        fillColor: Color(0xff755cf1),
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                        labelText: 'E-mail',
                        labelStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Insira um e-mail válido';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      _deviceWidth * 0.1, 8, _deviceWidth * 0.1, 0),
                  child: TextFormField(
                    controller: _password,
                    decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderSide: const BorderSide(
                              color: Color(0xff5333ed), width: 0.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                new BorderSide(width: 1, color: Colors.white)),
                        filled: true,
                        fillColor: Color(0xff755cf1),
                        suffixIcon: IconButton(
                          icon: Icon(
                              hidePassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.white),
                          onPressed: () => setState(() {
                            hidePassword = !hidePassword;
                          }),
                        ),
                        prefixIcon: Icon(Icons.vpn_key, color: Colors.white),
                        labelText: 'Senha',
                        labelStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Insira uma senha válida';
                      }
                      return null;
                    },
                    obscureText: hidePassword,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Container(
                    width: _deviceWidth * 0.8,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.white,
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Color(0xff5333ed),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ListPokePage()));
                        }
                      },
                      child: Text(
                        'Entrar',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
