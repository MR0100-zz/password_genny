import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:password_genny/local_data.dart';
import 'package:password_genny/widgets/all_application_password_page.dart';
import 'package:password_genny/widgets/bank_password_page.dart';
import 'package:password_genny/widgets/home_screen_appbar.dart';
import 'package:password_genny/widgets/home_screen_tab_bar.dart';
import 'package:password_genny/widgets/social_application_password_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /// currpage ...
  int currPage = 0;

  /// pageview controller ...
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: currPage,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
        appBar: CustomAppBar(
          context: context,
        ),
        body: Column(
          children: [
            CustomTabBar(
              currPage: currPage,
              onPageChange: (page) => setState(() {
                _pageController.animateToPage(page,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn);
                currPage = page;
              }),
            ),
            Expanded(
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: _pageController,
                children: [
                  AllApplicationPasswordsPage(),
                  SocialApplicationPasswordsPage(),
                  BankPasswordsPage()
                ],
              ),
            ),
          ],
        ));
  }
}
