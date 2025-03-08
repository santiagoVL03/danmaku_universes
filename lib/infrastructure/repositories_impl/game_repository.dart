import 'package:danmaku_universes/domain/repositories/i_game_repository.dart';

class GameRepository implements IGameRepository {
  @override
  Future<void> createGame() async {
    print ('Game created');
  }

  @override
  Future<void> deleteGame(String gameId) async {
    print ('Game deleted');
  }

  @override
  Future<void> endGame(String gameId) async {
    print ('Game ended');
  }

  @override
  Future<void> joinGame(String gameId) async {
    print ('Game joined');
  }

  @override
  Future<void> startGame(String gameId) async {
    print ('Game started');
  }

  @override
  Future<void> updateGame(String gameId, Map<String, dynamic> data) async {
    print ('Game updated');
  }
}