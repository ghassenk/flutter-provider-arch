import 'package:flutter/material.dart';
import 'package:flutter_app/model/app_model.dart';
import 'package:flutter_app/model/home_model.dart';
import 'package:flutter_app/model/login_model.dart';
import 'package:provider/provider.dart';

import 'home_widget.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppModel>(create: (context) => AppModel()),
        ChangeNotifierProvider<HomeModel>(create: (context) => HomeModel()),
        ChangeNotifierProvider<LoginModel>(create: (context) => LoginModel()),
      ],
      child: Consumer<AppModel>(
        builder: (context, appModel, child) {
          return _getMaterialApp(appModel);
        },
      ),
    );
  }

  MaterialApp _getMaterialApp(AppModel app) {
    return MaterialApp(
      title: app.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
