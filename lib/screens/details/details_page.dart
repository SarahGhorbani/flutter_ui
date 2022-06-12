import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui/constants.dart';
import 'package:flutter_ui/screens/details/components/icon_button_with_shadow.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: size.width *0.2,
                color: Colors.white,
                child: Column(
                  children: const [
                    IconButtonWithShadow(color: primaryColor,
                    icon: 'assets/images/1.jpg'),
                    SizedBox(height: 10),
                    IconButtonWithShadow(color: primaryColor,
                      icon: 'assets/images/1.jpg',),
                    SizedBox(height: 10),
                    IconButtonWithShadow(color: primaryColor,
                      icon: 'assets/images/1.jpg',),
                    SizedBox(height: 10),
                    IconButtonWithShadow(color: primaryColor,
                      icon: 'assets/images/1.jpg',),
                  ],
                ),
              ),
              SizedBox(
                width:size.width * 0.8 ,
                height: size.height *0.8,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child:  ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40),
                          bottomLeft: Radius.circular(40)
                      ),
                      child:Image.asset("assets/images/1.jpg",
                        fit: BoxFit.cover,),
                    ),
                    ),

                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
