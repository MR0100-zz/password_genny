import 'package:flutter/widgets.dart';

class AddPasswordProvider extends ChangeNotifier {
  /// store selected application OR media value...
  String _selectedMediaName = "OTHER";
  String get selectedMediaName => _selectedMediaName;
  set selectedMediaName(String value) {
    _selectedMediaName = value;
    notifyListeners();
  }

  /// store selected charactor limit ...
  int _selectedCharactorLimit = 8;
  int get selectedCharactorLimit => _selectedCharactorLimit;
  set selectedCharactorLimit(int value) {
    _selectedCharactorLimit = value;
    notifyListeners();
  }

  /// password create button pressed or not ...
  bool _isPasswordGeneratePressed = false;
  bool get isPasswordGeneratePressed => _isPasswordGeneratePressed;
  set isPasswordGeneratePressed(bool value) {
    _isPasswordGeneratePressed = value;
    notifyListeners();
  }

  /// store new generated password ...
  String _newGeneratedPassword = "";
  String get newGeneratedPassword => _newGeneratedPassword;
  set newGeneratedPassword(String value) {
    _newGeneratedPassword = value;
    ChangeNotifier();
  }

  /// list of media ...
  List<String> _socialApplicationsList = [
    'OTHER',
    'PASSWORD_GENNY',
    'YOUTUBE',
    'TWITTER',
    'FACEBOOK',
    'INSTAGRAM',
    'TELEGRAM',
    'DRIBBLE',
    'PINTREST',
  ];
  List<String> get socialApplicationsList => _socialApplicationsList;
  set socialApplicationsList(List<String> value) {
    _socialApplicationsList = value;
    notifyListeners();
  }

  void socialApplicationsListAdd(String value) {
    _socialApplicationsList.add(value);
    notifyListeners();
  }

  /// add to group
  int _addToGroupNo = 0;
  int get addToGroupNo => _addToGroupNo;
  set addToGroupNo(int value) {
    _addToGroupNo = value;
    notifyListeners();
  }
}
