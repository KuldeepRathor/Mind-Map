import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mind_map/model/user_details.dart';
import 'package:mind_map/widgets/btnavbar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.3,
              ),
              Text(
                "Mind-Map",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: size.height * 0.4,
              ),
              // InkWell(
              //   onTap: () {
              //     signinwithGoogle();
              //   },
              //   child: SvgPicture.asset('assets/svgs/google.svg'),
              // ),
              ElevatedButton(
                  onPressed: () {
                    signinwithGoogle();
                  },
                  child: Text("Sign in with Google")),
            ],
          ),
        ),
      ),
    );
  }
}

Future<UserCredential> signinwithGoogle() async {
  GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
  AuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );
  UserCredential userCredential =
      await FirebaseAuth.instance.signInWithCredential(credential);

  debugPrint(
    userCredential.user?.displayName.toString(),
  );
  UserDetails.name = userCredential.user?.displayName.toString();
  UserDetails.profilePhotoUrl = userCredential.user?.photoURL.toString();

  if (userCredential.user != null) {
    Get.to(() => Btnavbar());
  } else {
    Get.snackbar("Error", "Something went wrong");
  }
  return userCredential;
}
