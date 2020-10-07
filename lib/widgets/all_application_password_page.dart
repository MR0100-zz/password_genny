import 'package:flutter/material.dart';
import 'package:password_genny/local_data.dart';
import 'package:password_genny/widgets/application_password_tile.dart';

class AllApplicationPasswordsPage extends StatelessWidget {
  /// index of color for pallate ...
  int color = 0;

  /// password list of all applications ...
  List<Map<String, String>> passwords = [
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
    {
      "application_type": "social_media",
      "application_name": "INSTAGRAM",
      "application_password": "xnd9A[dks#0df4",
      "password_length": "14"
    },
    {
      "application_type": "social_media",
      "application_name": "TELEGRAM",
      "application_password": "xnd9A[dks#0df4",
      "password_length": "14"
    },
    {
      "application_type": "social_media",
      "application_name": "PINTREST",
      "application_password": "xnd9A[dks#0df4",
      "password_length": "14"
    },
    {
      "application_type": "social_media",
      "application_name": "DRIBBLE",
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