import 'package:vitalik/models/user_model.dart';

abstract class AuthService {
  Future<UserModel> loginWithGoogle();
}