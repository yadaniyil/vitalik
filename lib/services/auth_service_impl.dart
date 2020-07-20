import 'package:google_sign_in/google_sign_in.dart';
import 'package:vitalik/models/user_model.dart';
import 'package:vitalik/services/auth_service.dart';

class AuthServiceImpl extends AuthService {

  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
    ],
  );

  @override
  Future<UserModel> loginWithGoogle() async {
    GoogleSignInAccount account = await _googleSignIn.signIn();
    UserModel userModel = UserModel(
      id: account.id,
      displayName: account.displayName,
      email: account.email,
      photoUrl: account.photoUrl,
    );

    return userModel;
  }

}