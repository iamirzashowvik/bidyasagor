import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class Mobile_Number extends StatelessWidget {
  const Mobile_Number({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff050607),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextResponsive(
                'Enter your Mobile Number',
                style: TextStyle(
                    fontSize: 175.h,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
                margin:
                    const EdgeInsets.only(left: 30.0, top: 30.0, right: 30.0),
                height: 40.0,
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(25.7))),
                child: new TextField(
                  keyboardType: TextInputType.numberWithOptions(),
                  controller: null,
                  autofocus: false,
                  style: new TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  decoration: new InputDecoration(
                    prefix: Text('+880 '),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'mobile number',
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 8.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                      borderRadius: new BorderRadius.circular(25.7),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                      borderRadius: new BorderRadius.circular(25.7),
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'Otp');
                },
                child: Container(
                  height: 100.h,
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
                    'Done!',
                    style: TextStyle(
                        fontSize: 150.h,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
