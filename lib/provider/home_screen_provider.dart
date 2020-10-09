import 'package:flutter/widgets.dart';

class HomeScreenProvider extends ChangeNotifier {
  /// selected media Name
  String _selectedMediaForAddNewPassword = "OTHER";

  String get selectedMediaForAddNewPassword => _selectedMediaForAddNewPassword;

  set selectedMediaForAddNewPassword(String value) {
    _selectedMediaForAddNewPassword = value;
    notifyListeners();
  }
}
