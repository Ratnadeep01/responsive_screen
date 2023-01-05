import 'package:flutter/material.dart';

import 'constants.dart';

class CustomCard {
  double redCardHeight;
  EdgeInsetsGeometry padding;
  double greyCardHeight;
  double greyCardWidth;
  double greenCardHeight;
  double widthFactor;
  double? greyCardPosition;

  CustomCard(
      {Key? key,
      required this.redCardHeight,
      required this.padding,
      required this.greyCardHeight,
      required this.greyCardWidth,
      required this.greenCardHeight,
      required this.widthFactor,
      this.greyCardPosition});

  SizedBox buildFirstCard() {
    return SizedBox(
      height: redCardHeight,
      child: FractionallySizedBox(
        widthFactor: widthFactor,
        alignment: FractionalOffset.center,
        child: Card(
          color: redColor,
          child: Padding(
            padding: padding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: greenCardHeight,
                  width: greyCardWidth,
                  child: Card(
                    color: greyColor,
                  ),
                ),
                SizedBox(
                  height: greenCardHeight,
                  child: FractionallySizedBox(
                    widthFactor: widthFactor,
                    child: Card(
                      color: greenColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Stack buidSecondCard() {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: redCardHeight,
          child: FractionallySizedBox(
            widthFactor: widthFactor,
            alignment: FractionalOffset.center,
            child: Card(
              color: redColor,
              child: Padding(
                padding: padding,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: greenCardHeight,
                      child: FractionallySizedBox(
                        widthFactor: widthFactor,
                        child: Card(
                          color: greenColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: greyCardPosition,
          child: SizedBox(
            height: greyCardHeight,
            width: greyCardWidth,
            child: Card(
              color: greyColor,
            ),
          ),
        ),
      ],
    );
  }
}
