import 'package:flutter/cupertino.dart';
import '../../../constants.dart';

class TitleWithCustomUnderline  extends StatelessWidget {
  const TitleWithCustomUnderline({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Stack(children:  [
      Padding(
        padding: const EdgeInsets.only(left: 6),
        child: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            margin: const EdgeInsets.only(right: 6),
            height: 5,
            color: primaryColor.withOpacity(0.4),

          ))
    ]);
  }
}
