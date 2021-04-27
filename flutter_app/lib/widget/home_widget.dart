import 'package:flutter/material.dart';
import 'package:flutter_app/model/home_model.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<HomeModel>(builder: (context, homeModel, child) {
          return Text(homeModel.title);
        }),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Consumer<HomeModel>(builder: (context, homeModel, child) {
              return Text(
                '${homeModel.counter}',
                style: Theme.of(context).textTheme.headline4,
              );
            }),
          ],
        ),
      ),
      floatingActionButton:
          Consumer<HomeModel>(builder: (context, homeModel, child) {
        return FloatingActionButton(
          onPressed: homeModel.increment,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        );
      }),
    );
  }

}
