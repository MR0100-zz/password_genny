import 'package:flutter/material.dart';
import 'package:password_genny/local_data.dart';
import 'package:password_genny/provider/data_provider.dart';
import 'package:password_genny/widgets/application_password_tile.dart';
import 'package:provider/provider.dart';

class SocialApplicationPasswordsPage extends StatelessWidget {
  /// index of color for pallate ...
  int color = 0;

  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(
      builder: (_, _dataProvider, child) => SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: List.generate(_dataProvider.socialMediaPasswordsList.length,
              (index) {
            if (color == 0) {
              color = 1;
            } else if (color == 1) {
              color = 2;
            } else {
              color = 0;
            }
            return ApplicationPasswordTile(
              applicationName: _dataProvider.socialMediaPasswordsList[index]
                  ['application_name'],
              applicationPassword: _dataProvider.socialMediaPasswordsList[index]
                  ['application_password'],
              tileColor: colorPallate[color],
              onDismissed: () {
                _dataProvider.singleSocialMediaPasswordListDelete(index);
              },
            );
          }),
        ),
      ),
    );
  }
}
