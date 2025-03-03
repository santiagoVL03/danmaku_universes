import 'package:danmaku_universes/domain/repositories/game_repository.dart';
import 'package:danmaku_universes/domain/services/igame_services.dart';

class CreateGame {
  final GameRepository _gameRepository;
  final IGameService _gameService;


  CreateGame(this._gameRepository
  , this._gameService); 

  Future<void> execute() async {
    await _gameRepository.createGame();
  }

  
  
}