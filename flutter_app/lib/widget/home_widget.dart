import 'package:flutter/material.dart';
import 'package:flutter_app/model/home_model.dart';

class MyHomePage extends StatefulWidget {

  MyHomePage({Key? key, required this.home}) : super(key: key);
  final Home home;

  @override
  _MyHomePageState createState() => _MyHomePageState(/*homeState:homeState*/);
}

class _MyHomePageState extends State<MyHomePage> {

  VoidCallback? stateCallback;

  // TODO look for other ways to automate unregistering the callbacks
  void _registerStateCallback(Home home) {
    if (stateCallback != null) {
      home.unregister(stateCallback!);
    }
    stateCallback = () {
      setState(() {});
    };
    home.register(stateCallback!);
  }

  @override
  Widget build(BuildContext context) {
    final Home home = widget.home;
    _registerStateCallback(home);

    return Scaffold(
      appBar: AppBar(
        title: Text(home.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${home.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: home.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}
