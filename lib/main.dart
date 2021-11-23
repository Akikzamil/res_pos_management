import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:res_pos_management/provider/beverage_Provider.dart';
import 'package:res_pos_management/provider/desert_provider.dart';
import 'package:res_pos_management/provider/main_course_provider.dart';



import 'package:res_pos_management/provider/provider.dart';
import 'package:res_pos_management/provider/start_provider.dart';
import 'package:res_pos_management/provider/truefalse.dart';
import 'package:res_pos_management/screens/main_screen.dart';


void main() {
  runApp(

        MyApp());



}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider( create: (context)=>Providers(),),
        ChangeNotifierProvider( create: (context)=>StartProvider(),),
        ChangeNotifierProvider( create: (context)=>MainCourseProvider(),),
        ChangeNotifierProvider( create: (context)=>BeverageProvider(),),
        ChangeNotifierProvider( create: (context)=>DessertProvider(),),
        ChangeNotifierProvider( create: (context)=>TrueFalse(),),




      ],


      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: MainScreen(),
      ),
    );
  }
}

