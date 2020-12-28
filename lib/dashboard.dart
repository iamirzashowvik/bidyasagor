import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);
  _launchURL() async {
    const url = 'https://www.youtube.com/channel/UCNICyk04pqQLeDcDn8lLhNA';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff050607),
        title: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: TextResponsive(
            'Welcome Razib',
            style: TextStyle(
                fontSize: 200.h,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Text(
                  "Bidyasagor",
                  style: TextStyle(
                      fontSize: 100.h,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Gilroy',
                      color: Color(0xff0084ff)),
                ),
              ),
              ListTile(
                title: Text(
                  "DashBoard",
                  style: TextStyle(
                      fontSize: 75.h,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Gilroy',
                      color: Color(0xff0084ff)),
                ),
              ),
              ListTile(
                title: Text(
                  "Scanner",
                  style: TextStyle(
                      fontSize: 75.h,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Gilroy',
                      color: Color(0xff0084ff)),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, 'Profile');
                },
                title: Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 75.h,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Gilroy',
                      color: Color(0xff0084ff)),
                ),
              ),
              ListTile(
                onTap: () {
                  _launchURL();
                  //Navigator.pushNamed(context, 'WebViewExample');
                },
                title: Text(
                  "Youtube",
                  style: TextStyle(
                      fontSize: 75.h,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Gilroy',
                      color: Color(0xff0084ff)),
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xff050607),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Container(
                height: 300.h,
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
                  'Enroll Todays Virtual Admission Test',
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 190.h,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Container(
                    height: 200.h,
                    width: 300.w,
                    decoration: new BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(30.0)),
                      gradient: new LinearGradient(
                        colors: [Color(0xff00feef), Color(0xff3d76e0)],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: Center(
                        child: TextResponsive(
                      'Medical',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 190.h,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 35),
                  child: Container(
                    width: 300.w,
                    height: 200.h,
                    decoration: new BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(30.0)),
                      gradient: new LinearGradient(
                        colors: [Color(0xff00feef), Color(0xff3d76e0)],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: Center(
                        child: TextResponsive(
                      'Varsity',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 190.h,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35, left: 35, right: 35),
              child: Container(
                height: 200.h,
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
                    'Announcement',
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 250.h,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: Container(
                height: 200.h,
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0)),
                  gradient: new LinearGradient(
                    colors: [Color(0xff00feef), Color(0xff3d76e0)],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                ),
                child: Center(
                  child: TextResponsive(
                    'Next Exam Syllabus',
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 190.h,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
