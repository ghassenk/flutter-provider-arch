import 'package:flutter/material.dart';
import 'package:flutter_app/model/app_model.dart';

import 'home_widget.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key, required this.app}) : super(key: key);

  final App app;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    app.register(() {
      // TODO check if we can/need to rebuild this widget
    });
    final title = app.title;

    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(home: app.home()),
    );
  }
}
