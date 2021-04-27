import 'abstract_model.dart';
import 'home_model.dart';

class App extends AbstractModel {
  
  //region App Attributes
  final String title = 'Flutter Demo';
  //endregion

  //region App State and Widget States Management
  App? _app;
  Home? _home;

  App app() {
    return _app!;
  }

  Home home() {
    if (_home == null) {
      _home = Home();
    }

    return _home!;
  }
  //endregion

}
