import 'package:danmaku_universes/domain/entities/user_entity.dart';
import 'package:danmaku_universes/infrastructure/DTOs/user_dto.dart';
import 'package:danmaku_universes/infrastructure/repositories_impl/user_repository.dart';

class CreateUserUsecase {
  final UserRepository _userRepository;

  CreateUserUsecase({UserRepository? userRepository})
    : _userRepository = userRepository ?? UserRepository();

  Future<(bool, String)> execute({required String username, String? email, String? name, required String password}) async {
    return await _userRepository.createUser(UserDto(username: username, password: password, email: email, name: name));
  }
}