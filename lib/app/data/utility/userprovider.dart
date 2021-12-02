import 'package:flutter/cupertino.dart';
import 'package:oceans/app/data/usr.dart';

class UserProvider extends ChangeNotifier {
  User _user = User(
    email: "",
    token: "",
    name: "",
    phone: "",
    renewalToken: "",
    type: "",
    userId: 0,
  );

  User get user => _user;

  void setUser(User user) {
    _user = user;
    notifyListeners();
  }
}
