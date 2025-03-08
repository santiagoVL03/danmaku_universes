import 'package:danmaku_universes/domain/entities/user_entity.dart';
import 'package:danmaku_universes/infrastructure/repositories_impl/user_repository.dart';

class AuthUserUsecase {
  final UserRepository _userRepository;

  AuthUserUsecase({UserRepository? userRepository})
      : _userRepository = userRepository ?? UserRepository();

  Future<void> execute(String username, String password) async {
    await _userRepository.loginUser(username, password);
  }
}