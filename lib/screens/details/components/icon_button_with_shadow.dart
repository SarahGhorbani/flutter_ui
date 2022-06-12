import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconButtonWithShadow extends StatelessWidget {
  const IconButtonWithShadow({Key? key, required this.color, required this.icon}) : super(key: key);
  final Color color;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(const Radius.circular(10)),
            color: Colors.white,
            boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.1),
            offset: const Offset(10, 10),
            blurRadius: 10,
          ),
              // BoxShadow(
              //   color: Colors.white.withOpacity(0.5),
              //   offset: const Offset(-10, -10),
              //   blurRadius: 50,
              // ),
        ]),
        child: Image.asset(icon),
      ),
    );
  }
}
