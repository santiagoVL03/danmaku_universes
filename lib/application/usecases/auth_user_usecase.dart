import 'package:danmaku_universes/infrastructure/repositories_impl/user_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthUserUsecase {
  final UserRepository _userRepository;

  AuthUserUsecase({UserRepository? userRepository})
    : _userRepository = userRepository ?? UserRepository();

  Future<(bool, String)> execute(String username, String password) async {
    try {
      var actualuser = await _userRepository.authUser(username, password);
      if (actualuser.$1 == false) {
        return (false, actualuser.$2);
      }

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('userId', actualuser.$3!.id);
      prefs.setString('username', actualuser.$3!.username);

      return (true, '');
    } catch (e) {
      return (false, e.toString());
    }
  }
}
