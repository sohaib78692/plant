import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_svg/flutter_svg.dart';
import "package:matcher/matcher.dart";
import 'package:plant/constants.dart';
import 'package:plant/screens/home/components/body.dart';
import 'package:plant/components/mybtmnvgnbr.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:  Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: (){},
        ),
      ),
      body: Body(),
      bottomNavigationBar: mybtmnvgnbr(),
    ));
  }
}

