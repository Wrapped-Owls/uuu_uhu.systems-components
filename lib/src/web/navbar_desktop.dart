import 'package:flutter/material.dart';

class NavbarDesktop extends StatefulWidget {
  NavbarDesktop({Key key}) : super(key: key);

  @override
  _NavbarDesktopState createState() => _NavbarDesktopState();
}

class _NavbarDesktopState extends State<NavbarDesktop> {
  //o número de itens nessa lista é o número de itens na navbar
  List _isHovering = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    
    
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: 80,
      child: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: Container(
          color: Color.fromRGBO(65, 70, 71, 1.0),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: <Widget>[
                Text(
                  "Navbar",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      InkWell(
                        onHover: (value) {
                          setState(() {
                            _isHovering[0] = value;
                          });
                        },
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Discover',
                              style: TextStyle(
                                color: _isHovering[0]
                                    ? Colors.white
                                    : Colors.grey[400],
                              ),
                            ),
                            SizedBox(height: 5),
                            // Para mostrar uma linha abaixo
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[0],
                              child: Container(
                                height: 2,
                                width: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: screenSize.width / 20),
                      InkWell(
                        onHover: (value) {
                          setState(() {
                            _isHovering[1] = value;
                          });
                        },
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Contact Us',
                              style: TextStyle(
                                color: _isHovering[1]
                                    ? Colors.white
                                    : Colors.grey[400],
                              ),
                            ),
                            SizedBox(height: 5),
                            // Para mostrar uma linha abaixo
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[1],
                              child: Container(
                                height: 2,
                                width: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: screenSize.width / 20),
                      InkWell(
                        onHover: (value) {
                          setState(() {
                            _isHovering[2] = value;
                          });
                        },
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'SignIn',
                              style: TextStyle(
                                color: _isHovering[2]
                                    ? Colors.white
                                    : Colors.grey[400],
                              ),
                            ),
                            SizedBox(height: 5),
                            // Para mostrar uma linha abaixo
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[2],
                              child: Container(
                                height: 2,
                                width: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: screenSize.width / 50,
                      ),
                      InkWell(
                        onHover: (value) {
                          setState(() {
                            _isHovering[3] = value;
                          });
                        },
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(
                                color: _isHovering[3]
                                    ? Colors.white
                                    : Colors.grey[400],
                              ),
                            ),
                            SizedBox(height: 5),
                            // Para mostrar uma linha abaixo
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[3],
                              child: Container(
                                height: 2,
                                width: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}