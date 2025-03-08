import 'package:danmaku_universes/domain/repositories/i_game_repository.dart';

class CreateGame {
  final IGameRepository _gameRepository;

  CreateGame(this._gameRepository); 

  Future<void> execute() async {
    await _gameRepository.createGame();
  }
}