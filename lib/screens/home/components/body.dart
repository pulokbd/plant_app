import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/components/recomanded_card_widget.dart';
import 'package:plant_app/screens/home/components/title_with_more_btn.dart';
import 'feature_card_widget.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),

          TitleWithMoreButton(title: "Recomanded", press: () {}),
          
          SizedBox(
            height: size.height * .4,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
              return RecomandedCard(
                image: "assets/images/image_1.png",
                title: "Samantha",
                country: "Russia",
                price: 440,
                press: () {},
              );

            },),
          ),

          TitleWithMoreButton(title: "Featured", press: () {}),

          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return FeatureCard(press: (){},image: "assets/images/bottom_img_1.png",);
              },
            ),
          ),



        ],
      ),
    );
  }
}


