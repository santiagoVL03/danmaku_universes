import 'package:danmaku_universes/domain/repositories/game_repository.dart';
import 'package:danmaku_universes/domain/services/game_service.dart';

class CreateGame {
  final GameRepository _gameRepository;


  CreateGame(this._gameRepository);

  Future<void> execute() async {
    await _gameRepository.createGame();
  }
  
}