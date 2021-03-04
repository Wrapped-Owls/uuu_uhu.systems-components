import 'package:flutter/material.dart';

class LogInMobile extends StatefulWidget {
  LogInMobile({Key? key}) : super(key: key);

  @override
  _LogInMobileState createState() => _LogInMobileState();
}

class _LogInMobileState extends State<LogInMobile> {
  final _isHovering = <bool>[false];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        //Esse container serve pra dar um fundo à área de dados e botão
        Expanded(
          child: Container(
            //fundo colorido do container
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            width: 400,
            //Separa os itens do container das bordas dele
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Login',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                      //separa os elementos do container entre si
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Column(
                        children: <Widget>[
                          //ÁREA DE DIGITAR DADOS
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                            decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(color: Colors.black),
                            ),
                          ),

                          SizedBox(height: 10),
                          TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                            decoration: InputDecoration(
                              labelText: 'Senha',
                              labelStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      )),

                  //OPÇÃO DE 'ESQUECI MINHA SENHA'
                  InkWell(
                      onTap: () {},
                      onHover: (value) {
                        setState(() {
                          _isHovering[0] = value;
                        });
                      },
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Esqueci minha senha',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 13),
                          ),

                          SizedBox(height: 1),
                          // Para mostrar uma linha abaixo
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[0],
                            child: Container(
                              height: 1,
                              width: 120,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ],
                      )),

                  SizedBox(height: 20),
                  //BOTÃO DE ENVIAR DADOS
                  MaterialButton(
                      color: Color.fromRGBO(65, 70, 71, 1.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20.0),
                        child: Text(
                          'Entrar',
                          style: TextStyle(color: Colors.white),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
