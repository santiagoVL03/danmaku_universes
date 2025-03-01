import 'package:danmaku_universes/domain/entities/card_entity.dart';
import 'package:danmaku_universes/domain/entities/hero_card_entity.dart';
import 'package:danmaku_universes/domain/entities/player_entity.dart';
import 'package:flutter/material.dart';

class GameEntity {
  final List<PlayerEntity> players;
  List<CardEntity> deckGeneral;
  List<CardEntity> discardPile;
  List<HeroCardEntity> deckHeros;

  GameEntity({
    required this.players,
    required this.deckGeneral,
    required this.discardPile,
    required this.deckHeros,
  });
}