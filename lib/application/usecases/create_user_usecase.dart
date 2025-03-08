import 'package:danmaku_universes/domain/entities/user_entity.dart';
import 'package:danmaku_universes/infrastructure/repositories_impl/user_repository.dart';

class CreateUserUsecase {
  final UserRepository _userRepository;

  CreateUserUsecase({UserRepository? userRepository})
    : _userRepository = userRepository ?? UserRepository();

  Future<(bool, String)> execute(UserEntity user) async {
    return await _userRepository.createUser(user);
  }
}