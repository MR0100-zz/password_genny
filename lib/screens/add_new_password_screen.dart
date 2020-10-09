import 'package:flutter/material.dart';
import 'package:password_genny/local_data.dart';
import 'package:password_genny/provider/add_password_provider.dart';
import 'package:password_genny/provider/data_provider.dart';
import 'package:password_genny/widgets/home_screen_appbar.dart';
import 'package:provider/provider.dart';
import 'dart:math';

class AddNewPasswordScreen extends StatelessWidget {
  /// TextField controller....
  TextEditingController _addNewMediaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Consumer<AddPasswordProvider>(
      builder: (_, _addPasswordProvider, child) => Scaffold(
        appBar: CustomAppBar(
          context: context,
          showText: false,
          leadingIcon: IconButton(
            onPressed: () {
              _addPasswordProvider.isPasswordGeneratePressed = false;
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff710a77),
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'One step toward security',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 5.0),
                Container(
                  height: 2.0,
                  width: 30.0,
                  color: Color(0xff710a77),
                ),
                SizedBox(height: 25.0),
                Text(
                  'Select Media Name',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    Container(
                      width: screen.width - 100.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          width: 1,
                          color: Color(0xff710a77),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: DropdownButton(
                        isExpanded: true,
                        value: '${_addPasswordProvider.selectedMediaName}',
                        underline: Container(),
                        items: List.generate(
                          _addPasswordProvider.socialApplicationsList.length,
                          (index) => DropdownMenuItem(
                            child: Text(
                              '${_addPasswordProvider.socialApplicationsList[index]}',
                              style: TextStyle(
                                color: Color(0xff710a77),
                                fontSize: 16.0,
                              ),
                            ),
                            value:
                                '${_addPasswordProvider.socialApplicationsList[index]}',
                          ),
                        ),
                        onChanged: (value) {
                          _addPasswordProvider.selectedMediaName = value;
                        },
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Container(
                              height: 200.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0)),
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Add new media',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.8),
                                      fontSize: 22.0,
                                    ),
                                  ),
                                  SizedBox(height: 5.0),
                                  Container(
                                    height: 1.0,
                                    width: 35.0,
                                    color: Color(0xff710a77),
                                  ),
                                  SizedBox(height: 10.0),
                                  Text(
                                    'media name',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  SizedBox(height: 5.0),
                                  Container(
                                    height: 50.0,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1.0,
                                        color: Color(0xff710a77),
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: TextFormField(
                                      controller: _addNewMediaController,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                      style: TextStyle(
                                        color: Color(0xff710a77),
                                        fontSize: 20.0,
                                      ),
                                      cursorColor: Color(0xff710a77),
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      FlatButton(
                                        onPressed: () {
                                          _addNewMediaController.text = "";

                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          'Cancle',
                                          style: TextStyle(
                                            color: Color(0xff710a77),
                                            fontSize: 22.0,
                                          ),
                                        ),
                                      ),
                                      RaisedButton(
                                        onPressed: () {
                                          _addPasswordProvider
                                              .socialApplicationsListAdd(
                                                  _addNewMediaController.text
                                                      .toUpperCase()
                                                      .toString());
                                          _addNewMediaController.text = "";
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          'Add',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22.0,
                                          ),
                                        ),
                                        color: Color(0xff710a77),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            width: 1.0,
                            color: Color(0xff710a77),
                          ),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 30.0,
                          color: Color(0xff710a77),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                Text(
                  'Select Charactor Limit',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 5.0),
                Container(
                  width: screen.width - 40.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      width: 1,
                      color: Color(0xff710a77),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: DropdownButton(
                    isExpanded: true,
                    value: '${_addPasswordProvider.selectedCharactorLimit}',
                    underline: Container(),
                    items: List.generate(
                      charactorLimit.length,
                      (index) => DropdownMenuItem(
                        child: Text(
                          '${charactorLimit[index]}',
                          style: TextStyle(
                            color: Color(0xff710a77),
                            fontSize: 16.0,
                          ),
                        ),
                        value: '${charactorLimit[index]}',
                      ),
                    ),
                    onChanged: (value) {
                      print(value);
                      _addPasswordProvider.selectedCharactorLimit =
                          int.parse(value);
                    },
                  ),
                ),
                SizedBox(height: 15.0),
                Text(
                  'Save To Group',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 5.0),
                Container(
                  height: 50.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Checkbox(
                        value: _addPasswordProvider.addToGroupNo == 0
                            ? true
                            : false,
                        onChanged: (value) {
                          _addPasswordProvider.addToGroupNo = 0;
                        },
                        activeColor: Colors.white,
                        checkColor: Color(0xff710a77),
                      ),
                      Text(
                        'All',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.53),
                          fontSize: 15.0,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      SizedBox(width: 40.0),
                      Checkbox(
                        value: _addPasswordProvider.addToGroupNo == 1
                            ? true
                            : false,
                        onChanged: (value) {
                          _addPasswordProvider.addToGroupNo = 1;
                        },
                        activeColor: Colors.white,
                        checkColor: Color(0xff710a77),
                      ),
                      Text(
                        'Social',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.53),
                          fontSize: 15.0,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      SizedBox(width: 40.0),
                      Checkbox(
                        value: _addPasswordProvider.addToGroupNo == 2
                            ? true
                            : false,
                        onChanged: (value) {
                          _addPasswordProvider.addToGroupNo = 2;
                        },
                        activeColor: Colors.white,
                        checkColor: Color(0xff710a77),
                      ),
                      Text(
                        'Bank',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.53),
                          fontSize: 15.0,
                          fontWeight: FontWeight.w100,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                GestureDetector(
                  onTap: () {
                    _addPasswordProvider.newGeneratedPassword = "";
                    Random r = Random();
                    for (int i = 0;
                        i < _addPasswordProvider.selectedCharactorLimit;
                        i++) {
                      String char = charactors[r.nextInt(charactors.length)];
                      _addPasswordProvider.newGeneratedPassword =
                          "${_addPasswordProvider.newGeneratedPassword}$char";
                    }
                    _addPasswordProvider.isPasswordGeneratePressed = true;
                  },
                  child: Container(
                    height: 50.0,
                    width: screen.width - 40.0,
                    decoration: BoxDecoration(
                      color: Color(0xff710a77),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Generate Password',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                _addPasswordProvider.isPasswordGeneratePressed
                    ? Divider(
                        endIndent: 40.0,
                        indent: 40.0,
                        color: Color(0xff710a77),
                        height: 30.0,
                      )
                    : SizedBox(),
                SizedBox(height: 20.0),
                _addPasswordProvider.isPasswordGeneratePressed
                    ? Row(
                        children: [
                          Container(
                            width: screen.width - 100.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                width: 1,
                                color: Color(0xff710a77),
                              ),
                            ),
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              '${_addPasswordProvider.newGeneratedPassword}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 50.0,
                            width: 50.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                width: 1.0,
                                color: Color(0xff710a77),
                              ),
                            ),
                            child: Icon(
                              Icons.content_copy,
                              size: 25.0,
                              color: Color(0xff710a77),
                            ),
                          ),
                        ],
                      )
                    : SizedBox(),
                SizedBox(height: 20.0),
                _addPasswordProvider.isPasswordGeneratePressed
                    ? Consumer<DataProvider>(
                        builder: (_, _dataProvider, chil) => GestureDetector(
                          onTap: () {
                            if (_addPasswordProvider.addToGroupNo == 0) {
                              _dataProvider.singleAllMediaPasswordListAdd = {
                                "application_type": "all_media",
                                "application_name":
                                    "${_addPasswordProvider.selectedMediaName}",
                                "application_password":
                                    "${_addPasswordProvider.newGeneratedPassword}",
                                "password_length":
                                    "${_addPasswordProvider.selectedCharactorLimit}"
                              };
                            } else if (_addPasswordProvider.addToGroupNo == 1) {
                              _dataProvider.singleSocialMediaPasswordListAdd = {
                                "application_type": "social_media",
                                "application_name":
                                    "${_addPasswordProvider.selectedMediaName}",
                                "application_password":
                                    "${_addPasswordProvider.newGeneratedPassword}",
                                "password_length":
                                    "${_addPasswordProvider.selectedCharactorLimit}"
                              };
                            } else if (_addPasswordProvider.addToGroupNo == 2) {
                              _dataProvider.singleBankMediaPasswordListAdd = {
                                "application_type": "bank_media",
                                "application_name":
                                    "${_addPasswordProvider.selectedMediaName}",
                                "application_password":
                                    "${_addPasswordProvider.newGeneratedPassword}",
                                "password_length":
                                    "${_addPasswordProvider.selectedCharactorLimit}"
                              };
                            }
                            _addPasswordProvider.isPasswordGeneratePressed =
                                false;
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 50.0,
                            width: screen.width - 40.0,
                            decoration: BoxDecoration(
                              color: Color(0xff710a77),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'Save Password',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      )
                    : SizedBox(),
                SizedBox(height: 40.0)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
