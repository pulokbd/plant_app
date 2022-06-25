import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../component/icon_card.dart';
import '../../../constants.dart';

class ImageWithIconsWidget extends StatelessWidget {
  const ImageWithIconsWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 1),
      height: size.height * .8,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                      ),
                    ),
                  ),
                  const Spacer(),
                  IconCard(icon: "assets/icons/sun.svg"),
                  IconCard(icon: "assets/icons/icon_2.svg"),
                  IconCard(icon: "assets/icons/icon_3.svg"),
                  IconCard(icon: "assets/icons/icon_4.svg"),

                ],
              ),
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
            ),
          ),
          Container(
              height: size.height * .8,
              width: size.width * .75,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 60,
                      color: kPrimaryColor.withOpacity(0.29))
                ],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(63),
                  topLeft: Radius.circular(63),
                ),
                image: const DecorationImage(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/img.png")),
              ))
        ],
      ),
    );
  }
}