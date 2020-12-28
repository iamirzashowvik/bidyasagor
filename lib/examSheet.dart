import 'package:flutter/material.dart';
import 'dart:async';
import 'package:countdown_flutter/countdown_flutter.dart';

class ExamSheet extends StatefulWidget {
  @override
  _ExamSheetState createState() => _ExamSheetState();
}

class _ExamSheetState extends State<ExamSheet> {
  Timer _timer;
  int _start = 30 * 60;
  void startTimer() {
    if (_timer != null) {
      _timer.cancel();
      _timer = null;
    } else {
      _timer = new Timer.periodic(
        const Duration(seconds: 1),
        (Timer timer) => setState(
          () {
            if (_start < 1) {
              timer.cancel();
              // time over function will be added here.okay ?
            } else {
              _start = _start - 1;
            }
          },
        ),
      );
    }
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff050607),
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
                height: 40,
                width: 70,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: Color(0xffC71F16)),
                child: Center(
                    child: Text(
                  'Leave',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.bold,
                    // color: Color(0xff0ccf4f),
                  ),
                  // overflow: TextOverflow.ellipsis,
                ))),
          )
        ],
        backgroundColor: Color(0xff050607),
        title: Container(
          child: CountdownFormatted(
            duration: Duration(minutes: 30),
            builder: (BuildContext ctx, String remaining) {
              return Text(
                remaining,
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.normal,
                  color: Color(0xff0ccf4f),
                ),
              ); // 01:00:00
            },
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) {
            index++;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: Colors.white),
                // height: 500,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          color: Color(0xff050607),
                        ),
                        child: Center(
                          child: Text(
                            '${index.toString()}.',
                            style: TextStyle(
                              fontSize: 50,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0ccf4f),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'As light from a star spreads out and weakens, do gaps form between the photons?',
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Image.asset(
                      'Assets/megaphone-with-important-announcement-flat_149152-517.jpg',
                      height: 200,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          color: Color(0xff050607),
                        ),
                        child: Text(
                          'Answer 1 ',
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          color: Color(0xff050607),
                        ),
                        child: Text(
                          'Answer 2',
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          color: Color(0xff050607),
                        ),
                        child: Text(
                          'Answer 3',
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          color: Color(0xff050607),
                        ),
                        child: Text(
                          'Answer 4',
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff050607),
        onPressed: () {},
        child: Container(
          height: 100,
          width: 100,
          child: Center(
            child: Text(
              'Submit',
              style: TextStyle(
                // fontSize: 20,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.bold,
                color: Color(0xff0ccf4f),
              ),
              // overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}
