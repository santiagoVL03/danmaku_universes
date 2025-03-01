abstract class GameRepository {
  Future<void> createGame();
  Future<void> joinGame(String gameId);
  Future<void> startGame(String gameId);
  Future<void> endGame(String gameId);
  Future<void> deleteGame(String gameId);
  Future<void> updateGame(String gameId, Map<String, dynamic> data);
}