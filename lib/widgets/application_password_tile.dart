import 'package:flutter/material.dart';

class ApplicationPasswordTile extends StatelessWidget {
  final String applicationName;
  final String applicationPassword;
  final Color tileColor;

  const ApplicationPasswordTile(
      {this.applicationName = "application_name",
      this.applicationPassword = "application_password",
      this.tileColor});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Dismissible(
        key: UniqueKey(),
        direction: DismissDirection.endToStart,
        confirmDismiss: (direction) async {
          return showDialog(
              barrierColor: Colors.white.withOpacity(0.1),
              barrierDismissible: false,
              context: context,
              builder: (_) => Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50.0, vertical: 220.0),
                    child: Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white),
                        padding: EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                          top: 20.0,
                          bottom: 10.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Are you sure ?',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              'Once you will delete password you can not get it back !',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.4),
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                FlatButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    return false;
                                  },
                                  child: Text(
                                    'CANCLE',
                                    style: TextStyle(
                                        color:
                                            Color(0xff710a77).withOpacity(0.4),
                                        fontSize: 18.0),
                                  ),
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                    return true;
                                  },
                                  child: Material(
                                    elevation: 10.0,
                                    shadowColor:
                                        Color(0xff710a77).withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(50.0),
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25.0, vertical: 10.0),
                                        decoration: BoxDecoration(
                                            color: Color(0xff710a77),
                                            borderRadius:
                                                BorderRadius.circular(50.0)),
                                        child: Text(
                                          'YES',
                                          style: TextStyle(
                                              color: Color(0xffffffff),
                                              fontSize: 18.0),
                                        )),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ));
        },
        background: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Material(
              elevation: 10.0,
              shadowColor: Colors.red.withOpacity(0.6),
              borderRadius: BorderRadius.circular(100.0),
              child: Container(
                height: 50.0,
                width: 50.0,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    color: Colors.red),
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
            ),
            SizedBox(width: 20.0)
          ],
        ),
        child: Material(
          elevation: 10.0,
          borderRadius: BorderRadius.circular(15.0),
          shadowColor: tileColor.withOpacity(0.3),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: tileColor.withOpacity(0.2)),
              height: 80.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 15.0),
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xff710a77).withOpacity(0.1)),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('$applicationName',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w900)),
                      SizedBox(height: 5.0),
                      Text('$applicationPassword',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.content_copy,
                      size: 20, color: Colors.black.withOpacity(0.4)),
                  SizedBox(width: 20.0)
                ],
              )),
        ),
      ),
    );
  }
}
