import 'package:flutter/material.dart';
import 'package:uuu_uhu.systems_components/src/web/tabs/profileTab.dart';


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
        //That Stack exists to put the buttons over the banner
        Stack(
          children: <Widget>[
            //Image Container
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Images/banner.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              height: screenSize.height / 2,
            ),
            //Central Buttons
            Center(
              heightFactor: 1.2,
              child: Padding(
                padding: EdgeInsets.only(
                  top: screenSize.height * 0.40,
                  left: screenSize.width / 5,
                  right: screenSize.width / 5,
                ),
                //The 3 tabs are here
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

        
        tabSelector == 1 ? ProfileTab(widget.title1) : SizedBox(height: 0),

        tabSelector == 2 ? ProfileTab(widget.title2) : SizedBox(height: 0),

        tabSelector == 3 ? ProfileTab(widget.title3) : SizedBox(height: 0),
      ],
    );
  }
}
