import 'package:application_form/screens/SimpleForm.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp( const MaterialApp(
//     themeMode: ThemeMode.dark,
//     home: FormTwo(),
//   ),
//   );
// }

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
    // theme: ThemeData(
    //   brightness: Brightness.light
    // ),
      darkTheme: ThemeData(
      brightness: Brightness.dark,
    ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        body: SimpleForm(),),
  ),
  );
}

