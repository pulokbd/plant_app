import 'package:flutter/material.dart';

import '../../../constants.dart';


class FeatureCard extends StatelessWidget {
  FeatureCard({
    Key? key, required this.image, required this.press,
  }) : super(key: key);

  final String image;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding /2,
        ),
        width: size.width * 0.6,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover
            )
        ),
      ),
    );
  }
}