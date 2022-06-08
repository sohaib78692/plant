import 'package:flutter/material.dart';
import 'package:plant/constants.dart';


class Featuredplant extends StatelessWidget {
  const Featuredplant({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: [
          FeaturedPlantcart(
            image: "assets/images/bottom_img_1.png",
            press:(){}
          ),
          FeaturedPlantcart(
            image: "assets/images/bottom_img_2.png",
            press:(){}
          ),
          
        ],
      ),
    );
  }
}

class FeaturedPlantcart extends StatelessWidget {
  const FeaturedPlantcart({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);
  final String image;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector (
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image))),
      ),
    );
  }
}