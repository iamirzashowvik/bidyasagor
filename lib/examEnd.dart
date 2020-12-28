import 'package:flutter/material.dart';

class ExamEnd extends StatefulWidget {
  @override
  _ExamEndState createState() => _ExamEndState();
}

class _ExamEndState extends State<ExamEnd> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff050607),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ' Exam End ',
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.normal,
                  color: Color(0xff0ccf4f),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ' Your Score :',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.normal,
                  color: Color(0xff0ccf4f),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ' 20 ',
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.normal,
                  color: Color(0xff0ccf4f),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Out Of 20',
                style: TextStyle(
                  fontSize: 40,
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
                  Navigator.pushNamed(context, 'Dashboard');
                },
                child: Container(
                  height: 100,
                  width: 500,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    gradient: new LinearGradient(
                      colors: [Color(0xff00feef), Color(0xff3d76e0)],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                  ),
                  child: Center(
                      child: Text(
                    'DashBoard',
                    style: TextStyle(
                        fontSize: 50,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Keep on eyes Bidyasagor Group for prize update',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.normal,
                  color: Color(0xff0ccf4f),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
