import 'package:danmaku_universes/domain/entities/card_entity.dart';
import 'package:danmaku_universes/domain/entities/hero_card_entity.dart';

class PlayerEntity {
  final int idPlayer;
  final String namePlayer;
  int lifePoints;
  List<CardEntity> handPlayer;
  List<HeroCardEntity> heroCard;

  PlayerEntity({
    required this.idPlayer,
    required this.namePlayer,
    required this.lifePoints,
    required this.handPlayer,
    required this.heroCard,
  });

  void drawCard(CardEntity card) {
    handPlayer.add(card);
  }

  void playCard(CardEntity card) {
    handPlayer.remove(card);
  }

  void getCards(List<CardEntity> cards, List<HeroCardEntity> heroCards) {
    handPlayer.addAll(cards);
    heroCard.addAll(heroCards);
    for (var element in heroCards) {
      lifePoints += element.lifePoints;
    }
  }

  void removeCard (CardEntity card) {
    handPlayer.remove(card);
  }
}