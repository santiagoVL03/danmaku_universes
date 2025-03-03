import 'package:danmaku_universes/domain/entities/card_entity.dart';
import 'package:danmaku_universes/domain/entities/hero_card_entity.dart';
import 'package:danmaku_universes/domain/entities/player_entity.dart';

class GameEntity {
  final List<PlayerEntity> players;
  List<CardEntity> deckGeneral;
  List<CardEntity> discardPile;
  List<HeroCardEntity> deckHeros;
  int numberPlayers;
  int numberTurns = 0;

  GameEntity({
    required this.players,
    required this.deckGeneral,
    required this.discardPile,
    required this.deckHeros,
    this.numberPlayers = 2,
  });

  void initGame()
  {
    
  }
}