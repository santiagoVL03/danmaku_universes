import 'package:danmaku_universes/domain/entities/game_entity.dart';
import 'package:danmaku_universes/domain/entities/card_entity.dart';
import 'package:danmaku_universes/domain/entities/hero_card_entity.dart';
import 'package:danmaku_universes/domain/services/igame_services.dart';

class GameServices implements IGameService {
  GameEntity game;

  GameServices(this.game);

  void startGame() {
    game.players.forEach((player) {
      player.getCards(_drawCards(), _drawHeros());
    });
  }

  List<CardEntity> _drawCards(int n) {
    List<CardEntity> cards = [];
    for (int i = 0; i < n; i++) {
      cards.add(game.deckGeneral.removeAt(0));
    }
    return cards;
  }

  List<HeroCardEntity> _drawHeros(int nheros) {
    List<HeroCardEntity> heros = [];
    for (int i = 0; i < nheros; i++) {
      heros.add(game.deckHeros.removeAt(0));
    }
    return heros;
  }
  
  void endGame () {
    game.players.forEach((player) {
      print("Se culmino el juego");
    });
  }
}