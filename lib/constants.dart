import 'package:flutter/material.dart';

//Constant title
const String appBarTitle = 'Responsive Cards';

//Constant size of the cards.
const double redCardHeight = 100;
const double greyCardWidth = 300;
const double greenCardHeight = 30;

class GreyCardHeight {
  static const double h1 = 30; // This height is for the first card
  static const double h2 = 70; // This height is for the second card
}

//Constant position
const double greyCardPosition = 58;

//Constant width factor (Red card takes 90% of the screen and green card takes 90% of the red card.)
const double widthFactor = 0.9;

//Constant Padding
EdgeInsetsGeometry padding = const EdgeInsets.only(left: 20);

//Constant Colors
Color greyColor = Colors.grey;
Color redColor = Colors.red;
Color greenColor = Colors.green;
