import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:password_genny/local_data.dart';
import 'package:password_genny/widgets/application_password_tile.dart';

class BankPasswordsPage extends StatelessWidget {
  /// index of color for pallate ...
  int color = 0;

  /// password list of all applications ...
  List<Map<String, String>> passwords = [
    {
      "application_type": "social_media",
      "application_name": "PASSWORD_GENNY2",
      "application_password": "xnd9A[dks#0df4",
      "password_length": "14"
    },
    {
      "application_type": "social_media",
      "application_name": "FACEBOOK2",
      "application_password": "xnd9A[dks#0df4",
      "password_length": "14"
    },
    {
      "application_type": "social_media",
      "application_name": "TWITTER2",
      "application_password": "xnd9A[dks#0df4",
      "password_length": "14"
    },
    {
      "application_type": "social_media",
      "application_name": "INSTAGRAM2",
      "application_password": "xnd9A[dks#0df4",
      "password_length": "14"
    },
    {
      "application_type": "social_media",
      "application_name": "TELEGRAM2",
      "application_password": "xnd9A[dks#0df4",
      "password_length": "14"
    },
    {
      "application_type": "social_media",
      "application_name": "PINTREST2",
      "application_password": "xnd9A[dks#0df4",
      "password_length": "14"
    },
    {
      "application_type": "social_media",
      "application_name": "DRIBBLE2",
      "application_password": "xnd9A[dks#0df4",
      "password_length": "14"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: List.generate(passwords.length, (index) {
          if (color == 0) {
            color = 1;
          } else if (color == 1) {
            color = 2;
          } else {
            color = 0;
          }
          return ApplicationPasswordTile(
              applicationName: passwords[index]['application_name'],
              applicationPassword: passwords[index]['application_password'],
              tileColor: colorPallate[color]);
        }),
      ),
    );
  }
}
