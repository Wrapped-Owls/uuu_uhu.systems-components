import 'package:flutter/material.dart';

class ProfileMobile extends StatelessWidget {
  final String title1, title2, title3;
  const ProfileMobile(this.title1, this.title2, this.title3);

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
                            child: Text(title1),
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
                            child: Text(title2),
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
                            child: Text(title3),
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
