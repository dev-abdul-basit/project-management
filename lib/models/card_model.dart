import 'package:project_management/config/assets.dart';

class CardsModel {
  final int id;
  final String cardName;
  final String image;
  final int currentPrice;
  final int beforePrice;

  CardsModel({
    required this.id,
    required this.image,
    required this.cardName,
    required this.currentPrice,
    required this.beforePrice,
  });
}

// Our demo Sports

List<CardsModel> demoCards = [
  CardsModel(
    id: 1,
    image: AppAssets.thumbnailOne,
    cardName: "Card Name",
    currentPrice: 2500,
    beforePrice: 2000,
  ),
  CardsModel(
    id: 2,
    image: AppAssets.thumbnailTwo,
    cardName: "Card Name",
    currentPrice: 1500,
    beforePrice: 2000,
  ),
  CardsModel(
    id: 3,
    image: AppAssets.thumbnailThree,
    cardName: "Card Place",
    currentPrice: 3500,
    beforePrice: 2000,
  ),
  CardsModel(
    id: 4,
    image: AppAssets.thumbnailFour,
    cardName: "cardName",
    currentPrice: 4500,
    beforePrice: 2000,
  ),
  CardsModel(
    id: 5,
    image: AppAssets.thumbnailOne,
    cardName: "cardName",
    currentPrice: 1500,
    beforePrice: 2000,
  ),
  CardsModel(
    id: 6,
    image: AppAssets.thumbnailThree,
    cardName: "cardName",
    currentPrice: 1500,
    beforePrice: 2000,
  ),
  CardsModel(
    id: 7,
    image: AppAssets.thumbnailTwo,
    cardName: "cardName",
    currentPrice: 1500,
    beforePrice: 2000,
  ),
  CardsModel(
    id: 8,
    image: AppAssets.thumbnailFour,
    cardName: "cardName",
    currentPrice: 1500,
    beforePrice: 2000,
  ),
  CardsModel(
    id: 9,
    image: AppAssets.thumbnailFour,
    cardName: "cardName",
    currentPrice: 1500,
    beforePrice: 2000,
  ),
  CardsModel(
    id: 10,
    image: AppAssets.thumbnailOne,
    cardName: "cardName",
    currentPrice: 1500,
    beforePrice: 2000,
  ),
  CardsModel(
    id: 1,
    image: AppAssets.thumbnailOne,
    cardName: "Card Name",
    currentPrice: 1500,
    beforePrice: 2000,
  ),
  CardsModel(
    id: 2,
    image: AppAssets.thumbnailTwo,
    cardName: "Card Name",
    currentPrice: 1500,
    beforePrice: 2000,
  ),
  CardsModel(
    id: 3,
    image: AppAssets.thumbnailThree,
    cardName: "Card Place",
    currentPrice: 1500,
    beforePrice: 2000,
  ),
  CardsModel(
    id: 4,
    image: AppAssets.thumbnailFour,
    cardName: "cardName",
    currentPrice: 1500,
    beforePrice: 2000,
  ),
  CardsModel(
    id: 5,
    image: AppAssets.thumbnailOne,
    cardName: "cardName",
    currentPrice: 1500,
    beforePrice: 2000,
  ),
  CardsModel(
    id: 6,
    image: AppAssets.thumbnailThree,
    cardName: "cardName",
    currentPrice: 1500,
    beforePrice: 2000,
  ),
  CardsModel(
    id: 7,
    image: AppAssets.thumbnailTwo,
    cardName: "cardName",
    currentPrice: 1500,
    beforePrice: 2000,
  ),
  CardsModel(
    id: 8,
    image: AppAssets.thumbnailFour,
    cardName: "cardName",
    currentPrice: 1500,
    beforePrice: 2000,
  ),
  CardsModel(
    id: 9,
    image: AppAssets.thumbnailFour,
    cardName: "cardName",
    currentPrice: 1500,
    beforePrice: 2000,
  ),
  CardsModel(
    id: 10,
    image: AppAssets.thumbnailOne,
    cardName: "cardName",
    currentPrice: 1500,
    beforePrice: 2000,
  ),
];
