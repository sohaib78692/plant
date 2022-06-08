import 'package:flutter/material.dart';

import '../../../constants.dart';

class titlewprice extends StatelessWidget {
  const titlewprice({
    Key? key,
    required this.text,
    required this.country,
    required this.price,
  }) : super(key: key);
  final String text, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "$text\n",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: kTextColor, fontWeight: FontWeight.bold)),
            TextSpan(
                text: country,
                style: TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w300))
          ])),
          Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
