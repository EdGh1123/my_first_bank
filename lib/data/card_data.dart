import 'package:flutter/material.dart';
import 'package:my_first_bank/constants/color_constants.dart';




class CardModel {
  String cardHolderName;
  String cardNumber;
  String expDate;
  String cvv;
  Color cardColor;

  CardModel({
    required this.cardHolderName,
    required this.cardNumber,
    required this.cvv,
    required this.expDate,
    required this.cardColor,
  });
}

List<CardModel> myCards = [
  CardModel(
    cardHolderName: "Eduardo De La Hoz",
    cardNumber: "****  ****  ****  1244",
    cvv: "**4",
    expDate: "12/21",
    cardColor: kPrimaryColor,
  ),
  CardModel(
    cardHolderName: "Eduardo De La Hoz",
    cardNumber: "****  ****  ****  4321",
    cvv: "**5",
    expDate: "01/22",
    cardColor: kSecondaryColor,
  ),
];
