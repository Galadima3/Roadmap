// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:roadmap/navigation/Advanced/job_page.dart';

// import 'package:roadmap/navigation/named_routes.dart';
import 'package:roadmap/navigation1/home_screen.dart';

// import 'navigation/advanced/job_card.dart';

// import 'package:roadmap/navigation/route_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      // initialRoute: JobForm.id,
      // routes: {
      //   Route1.id: (context) => const Route1(),
      //   Route2.id: (context) => const Route2(),
      //   JobForm.id: (context) => const JobForm(),
      //   JobCard.id: (context) => const JobCard(),
      // },
      home: const HomeScreen(),
    );
  }
}
