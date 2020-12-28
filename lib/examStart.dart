import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class ExamStart extends StatefulWidget {
  ExamStart({Key key}) : super(key: key);

  @override
  _ExamStartState createState() => _ExamStartState();
}

class _ExamStartState extends State<ExamStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff050607),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Exam Name',
            style: TextStyle(
              fontSize: 50,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.normal,
              color: Color(0xff0ccf4f),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Topic : ',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.normal,
                    color: Color(0xff0ccf4f),
                  ),
                ),
                Text(
                  'Mathematics',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.normal,
                    color: Color(0xff0ccf4f),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Time : ',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.normal,
                    color: Color(0xff0ccf4f),
                  ),
                ),
                Text(
                  '30min',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.normal,
                    color: Color(0xff0ccf4f),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'After joining , Your time will be started & you can\'t revoke .',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.normal,
                color: Color(0xff0ccf4f),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: GestureDetector(
              onTap: () {
                //  Navigator.pushNamed(context, 'Dashboard');
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
                  'Start',
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
    );
  }
}
