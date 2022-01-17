import 'package:flutter/material.dart';
import 'package:flutter_web/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomePage(),

      routes: {
        HomePage.routeName: (context) => HomePage(),
        SamplePage.routeName: (context) => SamplePage(),
        PhotosHistoryAddPage.routeName: (context) => const PhotosHistoryAddPage(),
        GoodsDetailScreen.routeName: (context) => const GoodsDetailScreen(),
      },
      initialRoute: '/',
    );
  }
}

