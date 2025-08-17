import 'package:movie_app/features/login/command/login_command.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'login_view_model.g.dart';

class LoginViewModel {
  final LoginCommand loginCommand;
  LoginViewModel(
    this.loginCommand,
  );
  void login() {
    loginCommand.login();
  }
}

@riverpod
LoginViewModel loginViewModel(Ref ref) {
  return LoginViewModel(
    ref.watch(
      loginCommandProvider.notifier,
    ),
  );
}
