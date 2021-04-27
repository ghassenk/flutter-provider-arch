import 'abstract_model.dart';

class Home extends AbstractModel {

  final String title = 'Flutter Demo Home Page';
  int counter = 0;

  void increment() {
    counter++;
    onUpdate();
  }

}
