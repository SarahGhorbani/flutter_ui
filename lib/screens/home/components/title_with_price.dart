import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/constants.dart';

class TitleWithPrice extends StatelessWidget {
  const TitleWithPrice(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.price,})
      : super(key: key);

  final String title;
  final String subTitle;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: '$title\n'.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black12,
                  )),
              TextSpan(
                  text: subTitle.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 10,
                    color: primaryColor,
                  ))
            ],
          ),
        ),
        
        Text(
          '\$$price',
          style: const TextStyle(
              fontSize: 10, color: primaryColor, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
