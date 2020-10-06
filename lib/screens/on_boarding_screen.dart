import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _pgvc;
  int _currPage = 0;

  @override
  void initState() {
    super.initState();
    _pgvc = PageController(initialPage: _currPage);
  }

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 80.0),
          _getTopIndicator(screen, currPage: _currPage),
          SizedBox(
            height: screen.height * 0.08,
          ),
          Container(
            height: screen.height,
            child: PageView(
              children: [
                _page1(screen,pgvc: _pgvc),
                _page2(screen, pgvc: _pgvc),
                _page3(screen),
              ],
              physics: BouncingScrollPhysics(),
              controller: _pgvc,
              onPageChanged: (page) => setState(() {
                _currPage = page;
              }),
            ),
          ),
        ],
      ),
    ));
  }

  Widget _page1(Size screen, {PageController pgvc}) {
    return Column(
      children: [
        Container(
            height: screen.height * 0.4,
            width: screen.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screen.width),
                color: Color(0xff710a77).withOpacity(0.06)),
            margin: EdgeInsets.symmetric(horizontal: screen.width * 0.15),
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment(0.02, 0.02),
                  child: Icon(Icons.security,
                      color: Color(0xff710a77).withOpacity(0.3),
                      size: screen.width * 0.4),
                ),
                Align(
                  alignment: Alignment(0.08, 0.08),
                  child: Icon(Icons.security,
                      color: Color(0xff710a77), size: screen.width * 0.4),
                ),
              ],
            )),
        SizedBox(height: screen.height * 0.05),
        Text(
          'Keep your password safe',
          style: TextStyle(
              color: Color(0xff410a44),
              fontSize: 25.0,
              fontWeight: FontWeight.w900),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: screen.height * 0.02),
        Container(
          width: screen.width * 0.55,
          child: Text(
            'Store and manage your passwords with just one clicks.',
            style: TextStyle(
                color: Color(0xff310a33).withOpacity(0.4),
                fontSize: 14.0,
                fontWeight: FontWeight.w900),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: screen.height * 0.04),
        Container(
          height: 100.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FlatButton(
                onPressed: () {
                  pgvc.animateToPage(2, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                },
                child: Text(
                  'SKIP',
                  style: TextStyle(
                      color: Color(0xff710a77).withOpacity(0.4),
                      fontSize: 18.0),
                ),
              ),
              RaisedButton(
                  onPressed: () {
                    pgvc.nextPage(duration: Duration(milliseconds: 400), curve: Curves.easeIn);
                  },
                  color: Color(0xff710a77),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    'NEXT',
                    style: TextStyle(color: Color(0xffffffff), fontSize: 18.0),
                  ))
            ],
          ),
        ),
      ],
    );
  }

    Widget _page2(Size screen, {PageController pgvc}) {
    return Column(
      children: [
        Container(
            height: screen.height * 0.4,
            width: screen.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screen.width),
                color: Color(0xff710a77).withOpacity(0.06)),
            margin: EdgeInsets.symmetric(horizontal: screen.width * 0.15),
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment(0.02, 0.02),
                  child: Icon(Icons.dialpad,
                      color: Color(0xff710a77).withOpacity(0.3),
                      size: screen.width * 0.4),
                ),
                Align(
                  alignment: Alignment(0.08, 0.08),
                  child: Icon(Icons.dialpad,
                      color: Color(0xff710a77), size: screen.width * 0.4),
                ),
              ],
            )),
        SizedBox(height: screen.height * 0.05),
        Text(
          'Generate Random password',
          style: TextStyle(
              color: Color(0xff410a44),
              fontSize: 25.0,
              fontWeight: FontWeight.w900),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: screen.height * 0.02),
        Container(
          width: screen.width * 0.55,
          child: Text(
            'Get higher security with randomly generated strong passwords.',
            style: TextStyle(
                color: Color(0xff310a33).withOpacity(0.4),
                fontSize: 14.0,
                fontWeight: FontWeight.w900),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: screen.height * 0.04),
        Container(
          height: 100.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FlatButton(
                onPressed: () {
                  pgvc.animateToPage(2, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                },
                child: Text(
                  'SKIP',
                  style: TextStyle(
                      color: Color(0xff710a77).withOpacity(0.4),
                      fontSize: 18.0),
                ),
              ),
              RaisedButton(
                  onPressed: () {
                    pgvc.nextPage(duration: Duration(milliseconds: 400), curve: Curves.easeIn);
                  },
                  color: Color(0xff710a77),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    'NEXT',
                    style: TextStyle(color: Color(0xffffffff), fontSize: 18.0),
                  ))
            ],
          ),
        ),
      ],
    );
  }

  Widget _page3(Size screen) {
    return Column(
      children: [
        Container(
            height: screen.height * 0.4,
            width: screen.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screen.width),
                color: Color(0xff710a77).withOpacity(0.06)),
            margin: EdgeInsets.symmetric(horizontal: screen.width * 0.15),
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment(0.02, 0.02),
                  child: Icon(Icons.lock_outline,
                      color: Color(0xff710a77).withOpacity(0.3),
                      size: screen.width * 0.4),
                ),
                Align(
                  alignment: Alignment(0.08, 0.08),
                  child: Icon(Icons.lock_outline,
                      color: Color(0xff710a77), size: screen.width * 0.4),
                ),
              ],
            )),
        SizedBox(height: screen.height * 0.05),
        Text(
          'Strong lock security',
          style: TextStyle(
              color: Color(0xff410a44),
              fontSize: 25.0,
              fontWeight: FontWeight.w900),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: screen.height * 0.02),
        Container(
          width: screen.width * 0.55,
          child: Text(
            'Your applications are now safe with strong passwords.',
            style: TextStyle(
                color: Color(0xff310a33).withOpacity(0.4),
                fontSize: 14.0,
                fontWeight: FontWeight.w900),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: screen.height * 0.07),
        Material(
          elevation: 4.0,
          shadowColor: Color(0xff710a77).withOpacity(0.1),
          borderRadius: BorderRadius.circular(50.0),
          child: Container(
            height: 60.0,
            width: screen.width * 0.7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Color(0xff710a77)),
            alignment: Alignment.center,
            child: Text(
              'Get Started',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _getTopIndicator(Size screen, {int currPage = 0}) {
    return Container(
      width: screen.width,
      height: 20.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: screen.width * 0.1,
          ),
          Material(
            elevation: 2.0,
            borderRadius: BorderRadius.circular(50.0),
            shadowColor: currPage == 0
                ? Color(0xff710a77)
                : Color(0xff710a77).withOpacity(0.2),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              height: 8.0,
              width: screen.width * 0.25,
              decoration: BoxDecoration(
                color: currPage == 0
                    ? Color(0xff710a77)
                    : Color(0xff710a77).withOpacity(0.1),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
          ),
          Material(
            elevation: 2.0,
            borderRadius: BorderRadius.circular(50.0),
            shadowColor: currPage == 1
                ? Color(0xff710a77)
                : Color(0xff710a77).withOpacity(0.2),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              height: 8.0,
              width: screen.width * 0.25,
              decoration: BoxDecoration(
                color: currPage == 1
                    ? Color(0xff710a77)
                    : Color(0xff710a77).withOpacity(0.1),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
          ),
          Material(
            elevation: 2.0,
            borderRadius: BorderRadius.circular(50.0),
            shadowColor: currPage == 2
                ? Color(0xff710a77)
                : Color(0xff710a77).withOpacity(0.2),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              height: 8.0,
              width: screen.width * 0.25,
              decoration: BoxDecoration(
                color: currPage == 2
                    ? Color(0xff710a77)
                    : Color(0xff710a77).withOpacity(0.1),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
          ),
          SizedBox(
            width: screen.width * 0.1,
          ),
        ],
      ),
    );
  }
}
