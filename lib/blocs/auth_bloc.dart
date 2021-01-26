import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat_flutter/services/auth_service.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthBloc {
  final authService = AuthService();
  final googleSignin = GoogleSignIn(scopes: ['email']);

  Stream<User> get currentUser => authService.currentUser;

  loginGoogle() async {
    try {
      final GoogleSignInAccount googleUser = await googleSignin.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );

      //FIREBASE SIGN IN
      final result = await authService.signInWithCredential(credential);

      // print('${result.user.displayName}');
    } catch (error) {
      print(error);
    }
  }

  loginEmail(email, password) async {
    try {
      final result =
          await authService.signInWithEmailAndPassword(email, password);
      // print('${result.user.displayName}');
    } catch (error) {
      print(error);
    }
  }

  logout() {
    authService.logout();
  }
}
