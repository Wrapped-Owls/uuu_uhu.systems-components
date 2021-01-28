import 'package:uuu_uhu.systems_components/src/navbar.dart';
import 'package:uuu_uhu.systems_components/src/login.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Montserrat'),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        // background
        decoration: BoxDecoration(color: Color.fromRGBO(108, 108, 108, 1.0)),
        child: ResponsiveBuilder(
          builder: (context, sizingInformation) => Scaffold(
            drawer: sizingInformation.deviceScreenType==DeviceScreenType.mobile
              ?Drawer()
              :null,
            
            backgroundColor: Colors.transparent, //isso faz o fundo do container ser visível
            body: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Navbar(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 40.0),
                      child: Login(),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
