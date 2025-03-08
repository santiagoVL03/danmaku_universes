import 'package:danmaku_universes/domain/repositories/i_game_repository.dart';
import 'package:danmaku_universes/domain/services/i_game_services.dart';

class CreateGame {
  final IGameRepository _gameRepository;
  final IGameService _gameService;


  CreateGame(this._gameRepository
  , this._gameService); 

  Future<void> execute() async {
    await _gameRepository.createGame();
  }
}