import 'package:flutter/foundation.dart';
import 'package:vitalik/models/user_model.dart';
import 'package:vitalik/services/auth_service_impl.dart';

class AuthState extends ChangeNotifier {
  UserModel _userModel;

  UserModel get userModel => _userModel;

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  void loginWithGoogle(UserModel userModel) async {
    try {
      _isLoading = true;
      notifyListeners();

      UserModel userModel = await AuthServiceImpl().loginWithGoogle();
      _userModel = userModel;

      _isLoading = false;
      notifyListeners();
    } catch (error) {
      print(error);
    }
  }
}
