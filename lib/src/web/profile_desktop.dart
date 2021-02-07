import 'package:flutter/material.dart';
import 'package:uuu_uhu.systems_components/src/web/tabs/profileTab1.dart';
import 'package:uuu_uhu.systems_components/src/web/tabs/profileTab2.dart';
import 'package:uuu_uhu.systems_components/src/web/tabs/profileTab3.dart';

//obs: esse widget está como stateful pq a ideia é usar setState para
//mudar a tab ao clicar no inkwell

class ProfileDesktop extends StatefulWidget {
  final String title1, title2, title3;
  ProfileDesktop({Key key, this.title1, this.title2, this.title3})
      : super(key: key);

  @override
  _ProfileDesktopState createState() => _ProfileDesktopState();
}

class _ProfileDesktopState extends State<ProfileDesktop> {
  var tabSelector = 0;
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
                      //TAB1
                      Expanded(
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {
                            setState(() {
                              tabSelector = 1;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            child: Text(widget.title1),
                          ),
                        ),
                      ),
                      //TAB2
                      Expanded(
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {
                            setState(() {
                              tabSelector = 2;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            child: Text(widget.title2),
                          ),
                        ),
                      ),
                      //TAB3
                      Expanded(
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {
                            setState(() {
                              tabSelector = 3;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            child: Text(widget.title3),
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

        
        tabSelector == 1 ? ProfileTab1(widget.title1) : SizedBox(height: 0),

        tabSelector == 2 ? ProfileTab2(widget.title2) : SizedBox(height: 0),

        tabSelector == 3 ? ProfileTab3(widget.title3) : SizedBox(height: 0),
      ],
    );
  }
}
