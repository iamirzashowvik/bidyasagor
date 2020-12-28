import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String dropdownValue = '11';
  String dropdownValue2 = 'Medical';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff050607),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 50.h,
            ),
            Title_with_txtfld('First Name'),
            Title_with_txtfld('Last Name'),
            Title_with_txtfld('College Name'),
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  bottom: 20,
                ),
                child: TextResponsive(
                  'Class',
                  style: TextStyle(fontSize: 175.h, color: Colors.white),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                    // top: 20,
                    // bottom: 20,
                    ),
                child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Color(0xff0ccf4f), fontSize: 20),
                  // underline: Container(
                  //   height: 2,
                  //   color: Colors.deepPurpleAccent,
                  // ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  items: <String>['11', '12', 'Admission Seeker']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  bottom: 20,
                ),
                child: TextResponsive(
                  'Focus on',
                  style: TextStyle(fontSize: 175.h, color: Colors.white),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                    // top: 20,
                    // bottom: 20,
                    ),
                child: DropdownButton<String>(
                  value: dropdownValue2,
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Color(0xff0ccf4f), fontSize: 20),
                  // underline: Container(
                  //   height: 2,
                  //   color: Colors.deepPurpleAccent,
                  // ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue2 = newValue;
                    });
                  },
                  items: <String>['Medical', 'Varsity', 'Engineering']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            Title_with_txtfld('Enter your Password'),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 20, right: 30.0),
              child: Container(
                height: 100.h,
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  gradient: new LinearGradient(
                    colors: [Color(0xff22bfc3), Color(0xff0ccf4f)],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                ),
                child: Center(
                    child: TextResponsive(
                  'Enter',
                  style: TextStyle(fontSize: 150.h, color: Colors.white),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Title_with_txtfld extends StatelessWidget {
  Title_with_txtfld(this.title);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20,
      ),
      child: Column(
        children: <Widget>[
          TextResponsive(
            title,
            style: TextStyle(fontSize: 175.h, color: Colors.white),
          ),
          Container(
              margin: const EdgeInsets.only(left: 30.0, top: 20, right: 30.0),
              height: 40.0,
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      new BorderRadius.all(new Radius.circular(25.7))),
              child: new TextField(
                textAlign: TextAlign.center,
                //keyboardType: TextInputType.numberWithOptions(),
                controller: null,
                autofocus: false,
                style: new TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                decoration: new InputDecoration(
                  //prefix: Text('+880 '),
                  filled: true,
                  fillColor: Colors.white,
                  //hintText: 'mobile number',
                  contentPadding:
                      const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
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
        ],
      ),
    );
  }
}
