import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox(
      {Key? key,
      required this.searchIcon,
      required this.title,
      required this.headerIcon,
      required this.searchHintText})
      : super(key: key);

  final String searchIcon;
  final String title;
  final String headerIcon;
  final String searchHintText;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          margin: const EdgeInsets.only(bottom: defaultPadding),
          width: size.width,
          height: size.height * 0.2,
          decoration: const BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)),
          ),
          child: Row(
            children: [
               Text(title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              const Spacer(),
              SvgPicture.asset(headerIcon),
            ],
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: searchWithIcon(size, searchIcon)),
      ],
    );
  }

  Container searchWithIcon(Size size, String icon) {
    return Container(
      height: defaultPadding * 2.3,
      width: size.width,
      margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 40,
            color: primaryColor.withOpacity(0.23),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    hintText: searchHintText,
                    hintStyle: TextStyle(
                      color: primaryColor.withOpacity(0.5),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  )),
            ),
            SvgPicture.asset(icon),
          ],
        ),
      ),
    );
  }
}
