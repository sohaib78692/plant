import 'package:flutter/material.dart';
import 'package:plant/screens/details/components/body.dart';

class details extends StatelessWidget {
  const details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: body(),
      ),
    );
  }
}