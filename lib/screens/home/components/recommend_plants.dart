import 'package:flutter/cupertino.dart';
import 'package:flutter_ui/screens/home/components/recommend_planet_card.dart';

class RecommendsPlants extends StatelessWidget {
  const RecommendsPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          RecommendPlantCard(
            title: 'samantha',
            subTitle: 'russia',
            price: '440',
            image: 'assets/images/1.jpg',
          ),
          RecommendPlantCard(
            title: 'samantha',
            subTitle: 'russia',
            price: '440',
            image: 'assets/images/1.jpg',
          ),
          RecommendPlantCard(
            title: 'samantha',
            subTitle: 'russia',
            price: '440',
            image: 'assets/images/1.jpg',
          ),
          RecommendPlantCard(
            title: 'samantha',
            subTitle: 'russia',
            price: '440',
            image: 'assets/images/1.jpg',
          ),
        ],
      ),
    );
  }
}
