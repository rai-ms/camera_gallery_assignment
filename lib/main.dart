import 'package:camera_gallery_assignment/utils/route_name/route_name.dart';
import 'package:camera_gallery_assignment/utils/route_name/route_navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Camera Gallery Permission',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RouteName.PROFILE_EDIT_PAGE,
      onGenerateRoute: NavigateRoute.onGenerate,
    );
  }
}
