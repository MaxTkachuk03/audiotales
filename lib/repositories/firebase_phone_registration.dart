import 'package:audiotales/pages/registration_pages/registration_page_code.dart';
import 'package:audiotales/pages/registration_pages/registration_page_end.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthMethods {
  FirebaseAuthMethods(this._auth);

  final FirebaseAuth _auth;

  Future<void> phoneSignIn({
    required BuildContext context,
    required String phoneNumber,
  }) async {
    TextEditingController codeController = TextEditingController();

    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await _auth.signInWithCredential(credential);
      },
      verificationFailed: (e) {
        SnackBar(
          content: Text('${e.message}'),
        );
        // showSnackBar(
        //   context, error.message!,);
      },
      codeSent: ((verificationId, forceResendingToken) async {
        RegistrationPageCode(
          context: context,
          controller: codeController,
          onTap: () async {
            PhoneAuthCredential credential = PhoneAuthProvider.credential(
              verificationId: verificationId,
              smsCode: codeController.text.trim(),
            );

            await _auth.signInWithCredential(credential);
            // ignore: use_build_context_synchronously

            Navigator.pushNamed(
              context,
              RegistrationPageEnd.routeName,
            );
          },
        );
      }),
      codeAutoRetrievalTimeout: (verificationId) {},
    );
  }
}
