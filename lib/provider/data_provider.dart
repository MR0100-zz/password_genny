import 'package:flutter/widgets.dart';

class DataProvider extends ChangeNotifier {
  /// list of all media passwords ..
  List<Map<String, String>> _allMediaPasswordsList = [
    {
      "application_type": "social_media",
      "application_name": "PASSWORD_GENNY",
      "application_password": "xnd9A[dks#0df4",
      "password_length": "14"
    },
    {
      "application_type": "social_media",
      "application_name": "FACEBOOK",
      "application_password": "xnd9A[dks#0df4",
      "password_length": "14"
    },
    {
      "application_type": "social_media",
      "application_name": "TWITTER",
      "application_password": "xnd9A[dks#0df4",
      "password_length": "14"
    },
  ];
  List<Map<String, String>> get allMediaPasswordsList => _allMediaPasswordsList;
  set allMediaPasswordsList(List<Map<String, String>> value) {
    _allMediaPasswordsList = value;
    notifyListeners();
  }

  set singleAllMediaPasswordListAdd(Map<String, String> value) {
    _allMediaPasswordsList.add(value);
    notifyListeners();
  }

  void singleAllMediaPasswordListDelete(int index) {
    _allMediaPasswordsList.removeAt(index);
    notifyListeners();
  }

  /// list of social media passwords ..
  List<Map<String, String>> _socialMediaPasswordsList = [
    {
      "application_type": "social_media",
      "application_name": "PASSWORD_GENNY2",
      "application_password": "xnd9A[dks#0df4",
      "password_length": "14"
    },
  ];
  List<Map<String, String>> get socialMediaPasswordsList =>
      _socialMediaPasswordsList;
  set socialMediaPasswordsList(List<Map<String, String>> value) {
    _socialMediaPasswordsList = value;
    notifyListeners();
  }

  set singleSocialMediaPasswordListAdd(Map<String, String> value) {
    _socialMediaPasswordsList.add(value);
    notifyListeners();
  }

  void singleSocialMediaPasswordListDelete(int index) {
    _socialMediaPasswordsList.removeAt(index);
    notifyListeners();
  }

  /// list of bank media passwords ..
  List<Map<String, String>> _bankMediaPasswordsList = [
    {
      "application_type": "social_media",
      "application_name": "PASSWORD_GENNY3",
      "application_password": "xnd9A[dks#0df4",
      "password_length": "14"
    },
    {
      "application_type": "social_media",
      "application_name": "FACEBOOK3",
      "application_password": "xnd9A[dks#0df4",
      "password_length": "14"
    },
  ];
  List<Map<String, String>> get bankMediaPasswordsList =>
      _bankMediaPasswordsList;
  set bankMediaPasswordsList(List<Map<String, String>> value) {
    _bankMediaPasswordsList = value;
    notifyListeners();
  }

  set singleBankMediaPasswordListAdd(Map<String, String> value) {
    _bankMediaPasswordsList.add(value);
    notifyListeners();
  }

  void singleBankMediaPasswordListDelete(int index) {
    _bankMediaPasswordsList.removeAt(index);
    notifyListeners();
  }
}
