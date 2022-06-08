import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant/constants.dart';
import 'package:plant/screens/details/components/titlewprice.dart';

import 'icon_card.dart';
import 'image&icon.dart';

class body extends StatelessWidget {
  const body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Image_icon(size: size),
          titlewprice(
            text: "Angelia",
            price: 448,
            country: "Russia",
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10)
                        )
                      ),
                      textStyle: TextStyle(fontSize: 16),
                      primary: Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: kPrimaryColor
                    ),
                    child: Text(
                      "BuyNow",
                    )),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 16),
                      primary: Color.fromARGB(255, 0, 0, 0),
                      backgroundColor: Colors.white
                    ),
                    child: Text(
                      "Description",
                    )),
              )
            ],
          ),
          SizedBox(height: kDefaultPadding*2,)
        ],
      ),
    );
  }
}
