import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/details/details_page.dart';

import '../../../constants.dart';

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.price,
      required this.subTitle})
      : super(key: key);
  final String image;
  final String title;
  final String price;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailsPage()));
      },
      child: Container(
        margin: const EdgeInsets.only(
            left: defaultPadding,
            top: defaultPadding / 2,
            bottom: defaultPadding / 2),
        width: size.width * 0.35,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image.asset(image),
            ),
            Container(
              padding: const EdgeInsets.all(defaultPadding / 2.5),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(defaultPadding / 2),
                      bottomRight: Radius.circular(defaultPadding / 2))),
              child: Row(
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: '$title\n'.toUpperCase(),
                              style: const TextStyle(
                                fontSize: 12,
                                color: textColor,
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
                  ),
                  Text(
                    '\$$price',
                    style: const TextStyle(
                        fontSize: 10,
                        color: primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
