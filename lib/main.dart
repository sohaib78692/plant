import 'package:flutter/material.dart';
import 'package:plant/constants.dart';
import 'package:plant/screens/home/components/body.dart';
import 'package:plant/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Plants',
        theme: ThemeData(textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor)   ,colorScheme: ColorScheme.fromSwatch().copyWith(primary: kPrimaryColor,background: kBackgroundColor) ),
        home: HomeScreen(),
        
      );
  }
}

