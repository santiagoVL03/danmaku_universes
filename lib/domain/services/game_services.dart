import 'package:danmaku_universes/domain/entities/game_entity.dart';
import 'package:danmaku_universes/domain/entities/card_entity.dart';
import 'package:danmaku_universes/domain/entities/hero_card_entity.dart';

class GameServices {
  GameEntity game;

  GameServices(this.game);

  void startGame() {
    game.players.forEach((player) {
      player.getCards(_drawCards(), _drawHeros());
    });
  }

  List<CardEntity> _drawCards() {
    List<CardEntity> cards = [];
    for (int i = 0; i < 5; i++) {
      cards.add(game.deckGeneral.removeAt(0));
    }
    return cards;
  }

  List<HeroCardEntity> _drawHeros() {
    List<HeroCardEntity> heros = [];
    for (int i = 0; i < 2; i++) {
      heros.add(game.deckHeros.removeAt(0));
    }
    return heros;
  }
}