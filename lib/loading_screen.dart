import 'package:bidyasagor_2/mobilenumber.dart';
import 'package:flutter/material.dart';
import 'package:bidyasagor_2/main.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff050607),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 80),
              child: Image.asset(
                'Assets/bdlogo.png',
                height: 400.h,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'Mobile_Number');
                },
                child: Container(
                  height: 150.h,
                  width: 500.h,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    gradient: new LinearGradient(
                      colors: [Color(0xff00feef), Color(0xff3d76e0)],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                  ),
                  child: Center(
                      child: TextResponsive(
                    'Log In',
                    style: TextStyle(
                        fontSize: 150.h,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextResponsive(
                      'A better future',
                      style: TextStyle(
                          fontSize: 150.h,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextResponsive(
                      'Starts here',
                      style: TextStyle(
                          fontSize: 150.h,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
