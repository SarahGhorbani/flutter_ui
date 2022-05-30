import 'package:flutter/material.dart';
import 'package:flutter_ui/constants.dart';
import 'package:flutter_ui/screens/home/components/title_with_custom_under_line.dart';

class TitleWithButton extends StatelessWidget {
  const TitleWithButton(
      {Key? key,
      required this.onPress,
      required this.title,
      required this.textButton})
      : super(key: key);

  final String title;
  final String textButton;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        children: <Widget>[
           TitleWithCustomUnderline(title: title),
          const Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: primaryColor,
            onPressed: () {
              onPress;
            },
            child:  Text(
              textButton,
              style: const TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold),
            ),
          ),
          // TextButton(onPressed: (){}, child:
          // Text(""),
          // style:ButtonStyle(shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(20),
          // ) ),)
        ],
      ),
    );
  }
}
