import 'package:danmaku_universes/domain/entities/card_entity.dart';
class HeroCardEntity extends CardEntity{
  final String specialAbility;
  final int lifePoints;
  bool state;

  HeroCardEntity({
    required this.specialAbility,
    required this.lifePoints,
    required this.state,
    required int idCard,
    required String name,
    required String description,
    required String imageUrl
  }) : super(
    idCard: idCard,
    name: name,
    description: description,
    imageUrl: imageUrl
  );
  
}