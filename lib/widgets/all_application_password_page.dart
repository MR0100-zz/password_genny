import 'package:flutter/material.dart';
import 'package:password_genny/local_data.dart';
import 'package:password_genny/provider/data_provider.dart';
import 'package:password_genny/widgets/application_password_tile.dart';
import 'package:provider/provider.dart';

class AllApplicationPasswordsPage extends StatelessWidget {
  /// index of color for pallate ...
  int color = 0;

  @override
  Widget build(BuildContext context) {
    return Consumer<DataProvider>(
      builder: (_, _dataProvider, child) => SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: List.generate(_dataProvider.allMediaPasswordsList.length,
              (index) {
            if (color == 0) {
              color = 1;
            } else if (color == 1) {
              color = 2;
            } else {
              color = 0;
            }
            return ApplicationPasswordTile(
              applicationName: _dataProvider.allMediaPasswordsList[index]
                  ['application_name'],
              applicationPassword: _dataProvider.allMediaPasswordsList[index]
                  ['application_password'],
              tileColor: colorPallate[color],
              onDismissed: () {
                print('dismissed index : $index');
                _dataProvider.singleAllMediaPasswordListDelete(index);
              },
            );
          }),
        ),
      ),
    );
  }
}
