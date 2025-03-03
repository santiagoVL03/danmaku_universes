import 'package:danmaku_universes/domain/entities/card_entity.dart';
class HeroCardEntity extends CardEntity{
  final String specialAbility;
  final int lifePoints;
  bool state;

  HeroCardEntity({
    required this.specialAbility,
    required this.lifePoints,
    required this.state,
    required super.idCard,
    required super.name,
    required super.description,
    required super.imageUrl
  });
  
}