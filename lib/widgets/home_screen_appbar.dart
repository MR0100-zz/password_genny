import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final BuildContext context;
  final bool showText;
  final Widget leadingIcon;
  const CustomAppBar({
    @required this.context,
    this.showText = true,
    this.leadingIcon,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: showText ? 160.0 : 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 40),
                child: leadingIcon ??
                    Icon(
                      Icons.menu,
                      size: 30.0,
                      color: Color(0xff710a77),
                    ),
              ),
              Padding(
                  padding: EdgeInsets.only(right: 20.0, top: 40),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xff715755).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
                    child: Icon(
                      Icons.person,
                      size: 30.0,
                      color: Color(0xff710a77),
                    ),
                  )),
            ],
          ),
          showText
              ? Padding(
                  padding: const EdgeInsets.only(top: 17.0, left: 25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Keep your',
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 27.0,
                            fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Text(
                            'Password',
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 27.0,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            ' safe',
                            style: TextStyle(
                                color: Color(0xff710a77),
                                fontSize: 27.0,
                                fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              : SizedBox()
        ],
      ),
    );
  }

  @override
  Size get preferredSize => MediaQuery.of(context).size;
}
