import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/constants.dart';
import 'package:flutter_ui/screens/home/components/featured_items.dart';
import 'package:flutter_ui/screens/home/components/header_with_search_box.dart';
import 'package:flutter_ui/screens/home/components/recommend_plants.dart';
import 'package:flutter_ui/screens/home/components/title_with_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const HeaderWithSearchBox(
        searchIcon: 'assets/icons/back_arrow.svg',
        searchHintText: "search",
        headerIcon: 'assets/icons/back_arrow.svg',
        title: 'Hello Fashion!',
      ),
      Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: defaultPadding),
                child: TitleWithButton(
                    title: 'Recommended', textButton: 'More', onPress: () {}),
              ),
              const RecommendsPlants(),
              TitleWithButton(
                  title: 'Featured Plant', textButton: 'More', onPress: () {}),
              const FeaturedItems(),
            ],
          ),
        ),
      )
    ]);
  }
}

//add test commit
