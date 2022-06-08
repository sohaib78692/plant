import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'icon_card.dart';

class Image_icon extends StatelessWidget {
  const Image_icon({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.8,
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      padding:
                          EdgeInsets.symmetric(vertical: kDefaultPadding),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back)),
                ),
                Spacer(),
                Iconcard(
                  image: "assets/icons/sun.svg",
                ),
                Iconcard(
                  image: "assets/icons/icon_2.svg",
                ),
                Iconcard(
                  image: "assets/icons/icon_3.svg",
                ),
                Iconcard(
                  image: "assets/icons/icon_4.svg",
                )
              ],
            ),
          ),
          Container(
            height: size.height * 0.8,
            width: size.width * 0.75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(63),
                    topLeft: Radius.circular(63)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 60,
                      color: kPrimaryColor.withOpacity(0.29))
                ],
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/img.png"))),
          )
        ],
      ),
    );
  }
}

