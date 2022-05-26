import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/constants.dart';
import 'package:flutter_ui/screens/home/components/header_with_searchbox.dart';
import 'package:flutter_ui/screens/home/components/title_with_custom_under_line.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        HeaderWithSearchBox(
          searchIcon: 'assets/icons/back_arrow.svg',
          searchHintText: "search",
          headerIcon: 'assets/icons/back_arrow.svg',
          title: 'Hello Fashion!',
        ),
        TitleWithCustomUnderline(title: "Recommended"),
      ],
    );
  }
}

Widget titleWithButton() {
  return Row(
    children: [
      TitleWithCustomUnderline(title: "Recommended"),
      Spacer(),
      FlatButton(onPressed: () {},
          child: ,
      ),
    ],
  );
}
