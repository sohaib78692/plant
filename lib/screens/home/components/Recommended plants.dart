import 'package:flutter/material.dart';
import 'package:plant/constants.dart';

import '../../details/details.dart';

class RP extends StatelessWidget {
  const RP({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView (
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: [
          recommended_plants(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "Russia",
            price: 448,
            press: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context)=> details() ,));
            },
            )
      ,recommended_plants(
        image: "assets/images/image_2.png",
        title: "Samantha",
        country: "Russia",
        price: 448,
        press: (){
          Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context)=> details() ,));
        },)
        ,recommended_plants(
        image: "assets/images/image_3.png",
        title: "Samantha",
        country: "Russia",
        price: 448,
        press: (){
          Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context)=> details() ,));
        },)
      ],
      ),
    );
  }
}

class recommended_plants extends StatelessWidget {
  const recommended_plants({
    Key? key, required this.image, required this.title, required this.country, required this.price, required this.press,
    
  }) : super(key: key);
  final String image,title,country;
  final int price;
  final Function() press;
  

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: size.width*0.4, 
      child:  Column(
        children: [
          Image.asset(image),
          GestureDetector (
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding/2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                color: Colors.white,
                boxShadow: [BoxShadow(
                  offset: Offset(0,10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.1)
                )], 
              ),
              child: Row(
                  children: [
                    RichText(text: TextSpan(
                      children: [
                      TextSpan(
                      text: "$title\n".toUpperCase(),
                      style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                      text: country.toUpperCase(),
                      style: TextStyle(
                        color:kPrimaryColor.withOpacity(0.5), 
                        )
                      )
                    ]
                    )),
                    Spacer(),
                    Text(price.toString(),
                    style: Theme.of(context).textTheme.button ,)
                  ],
                ),
            ),
          )
        ],
      ),
    );
  }
}