import 'package:flutter/cupertino.dart';
import 'package:flutter_ui/screens/home/components/featured_item_card.dart';

class FeaturedItems extends StatelessWidget {
  const FeaturedItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          FeaturedItemCard(
              image: 'assets/images/1.jpg',
              title: 'samanta',
              price: '500',
              subTitle: 'london'),
          FeaturedItemCard(
              image: 'assets/images/1.jpg',
              title: 'samanta',
              price: '500',
              subTitle: 'germany'),
          FeaturedItemCard(
              image: 'assets/images/1.jpg',
              title: 'samanta',
              price: '500',
              subTitle: 'paris'),
          FeaturedItemCard(
              image: 'assets/images/1.jpg',
              title: 'samanta',
              price: '500',
              subTitle: 'switzerland'),
        ],
      ),
    );
  }
}
