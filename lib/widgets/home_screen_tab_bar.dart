import 'package:flutter/material.dart';

typedef PageChanged(int);

class CustomTabBar extends StatelessWidget {
  final int currPage;
  final PageChanged onPageChange;

  const CustomTabBar({this.currPage, this.onPageChange});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => onPageChange(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'All',
                  style: TextStyle(
                    color: currPage == 0
                        ? Color(0xff710a77)
                        : Colors.black.withOpacity(0.5),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 3.0),
                currPage == 0
                    ? Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(10.0),
                        shadowColor: Color(0xff710a77).withOpacity(0.5),
                        child: Container(
                          height: 3.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xff710a77),
                          ),
                        ),
                      )
                    : SizedBox(),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => onPageChange(1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Social',
                  style: TextStyle(
                    color: currPage == 1
                        ? Color(0xff710a77)
                        : Colors.black.withOpacity(0.5),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 3.0),
                currPage == 1
                    ? Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(10.0),
                        shadowColor: Color(0xff710a77).withOpacity(0.5),
                        child: Container(
                          height: 3.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xff710a77),
                          ),
                        ),
                      )
                    : SizedBox(),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => onPageChange(2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Bank',
                  style: TextStyle(
                    color: currPage == 2
                        ? Color(0xff710a77)
                        : Colors.black.withOpacity(0.5),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 3.0),
                currPage == 2
                    ? Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(10.0),
                        shadowColor: Color(0xff710a77).withOpacity(0.5),
                        child: Container(
                          height: 3.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xff710a77),
                          ),
                        ),
                      )
                    : SizedBox(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
