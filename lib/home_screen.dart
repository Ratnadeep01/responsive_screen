import 'package:card_responsive/custom_card.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appBarTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomCard(
                    redCardHeight: redCardHeight,
                    padding: padding,
                    greyCardHeight: GreyCardHeight.h1,
                    greyCardWidth: greyCardWidth,
                    widthFactor: widthFactor,
                    greenCardHeight: greenCardHeight)
                .buildFirstCard(),
            CustomCard(
                    redCardHeight: redCardHeight,
                    padding: padding,
                    greyCardHeight: GreyCardHeight.h2,
                    greyCardWidth: greyCardWidth,
                    greenCardHeight: greenCardHeight,
                    widthFactor: widthFactor,
                    greyCardPosition: greyCardPosition)
                .buidSecondCard()
          ],
        ),
      ),
    );
  }
}
