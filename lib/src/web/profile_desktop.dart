import 'package:flutter/material.dart';

class ProfileDesktop extends StatelessWidget {
  const ProfileDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        //ESSE STACK EXISTE PARA PÔR BOTÕES SOBRE O BANNER
        Stack(
          children: <Widget>[
            //CONTAINER DA IMAGEM
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Images/banner.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              height: screenSize.height / 2,
            ),
            //BOTÕES CENTRAIS
            Center(
              heightFactor: 1.2,
              child: Padding(
                padding: EdgeInsets.only(
                  top: screenSize.height * 0.40,
                  left: screenSize.width / 5,
                  right: screenSize.width / 5,
                ),
                //OS 3 TABS ESTÃO AQUI
                child: Card(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            child: Text('TAB 1'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            child: Text('TAB 2'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            child: Text('TAB 3'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        
      ],
    );
  }
}
