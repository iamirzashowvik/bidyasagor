import 'package:bidyasagor_2/dashboard.dart';
import 'package:bidyasagor_2/examEnd.dart';
import 'package:bidyasagor_2/examStart.dart';
import 'package:bidyasagor_2/examsheet.dart';
import 'package:bidyasagor_2/mobilenumber.dart';
import 'package:bidyasagor_2/otp.dart';
import 'package:bidyasagor_2/profile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'package:bidyasagor_2/loading_screen.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(
      context,
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true,
    );
    return MaterialApp(initialRoute: 'ExamEnd', routes: {
      'LoadingScreen': (context) => LoadingScreen(),
      'Mobile_Number': (context) => Mobile_Number(),
      'Otp': (context) => Otp(),
      'Profile': (context) => Profile(),
      'Dashboard': (context) => Dashboard(),
      'ExamStart': (context) => ExamStart(),
      'ExamSheet': (context) => ExamSheet(),
      'ExamEnd': (context) => ExamEnd(),
      // 'WebViewExample': (context) => WikipediaExplorer(),
    });
  }
}
