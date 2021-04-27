import 'package:flutter/foundation.dart';

abstract class AbstractModel {

  //region Public Members
  void register(VoidCallback callback) {
    _updateCallbacks.add(callback);
  }

  void unregister(VoidCallback callback) {
    _updateCallbacks.remove(callback);
  }
  //endregion

  //region Private Members
  List<VoidCallback> _updateCallbacks = [];

  @protected
  void onUpdate() {
    for(VoidCallback cb in _updateCallbacks) {
      cb.call();
    }
  }
  //endregion

}
