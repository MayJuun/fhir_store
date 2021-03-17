import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:remote_state/remote_state.dart';

class FhirstoreLogin {
  FhirstoreLogin();

  Rx<RemoteState<dynamic>> state = RemoteState<dynamic>.initial().obs;

  Future<void> call(String email, String password) async {
    state.value = RemoteState<dynamic>.loading();

    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      state.value = RemoteState<dynamic>.success(userCredential);
      print('success');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        state.value =
            RemoteState<dynamic>.error('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        state.value = RemoteState<dynamic>.error(
            'Wrong password provided for that user.');
      }
    } catch (e) {
      state.value = RemoteState<dynamic>.error(e);
    }
  }
}
