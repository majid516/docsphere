// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class GoogleSiginInServices {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final GoogleSignIn _googleSignIn = GoogleSignIn();

//   Future<User?> signInWithGoogle(BuildContext context) async {
//     try {
//       // Trigger Google Sign-In
//       final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

//       if (googleUser == null) return null; // User canceled sign-in

//       // Retrieve authentication tokens
//       final GoogleSignInAuthentication googleAuth =
//           await googleUser.authentication;

//       // Create Firebase credential
//       final AuthCredential credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth.accessToken,
//         idToken: googleAuth.idToken,
//       );

//       // Attempt to sign in with the Google credential
//       final UserCredential userCredential =
//           await _auth.signInWithCredential(credential);
//       final User? user = userCredential.user;

//       // User successfully signed in
//       return user;
//     } on FirebaseAuthException catch (e) {
//       // Check error code to identify missing account
//       if (e.code == 'user-not-found') {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('Account not found. Try with another account.'),
//           ),
//         );
//       } else if (e.code == 'invalid-credential') {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('Invalid credentials. Please try again.'),
//           ),
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('Sign-in failed: ${e.message}'),
//           ),
//         );
//       }
//       return null;
//     } catch (e) {
//       print('Google Sign-In Error: $e');
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text('Sign-in failed. Please try again.'),
//         ),
//       );
//       return null;
//     }
//   }
// }




//UI


 //  const Text('Login wigh Google',style: TextStyle(fontSize: 22,color: MyColors.lightGreyColor,fontWeight: FontWeight.w500)),
                    // InkWell(
                    //   onTap: () {
                    //     GoogleSiginInServices().signInWithGoogle(context);
                    //   },
                    //   child: Stack(
                    //     alignment: Alignment.center,
                    //     children: [
                    //       Transform.rotate(
                    //         angle: 90 * pi / 180,
                    //         child: Stack(
                    //           alignment: Alignment.center,
                    //           children: [
                    //             Icon(
                    //               Icons.hexagon_rounded,
                    //               size: 75,
                    //               color: MyColors.darkGreyColor,
                    //             ),
                    //             Icon(
                    //               Icons.hexagon_rounded,
                    //               size: 72,
                    //               color: MyColors.whiteColor,
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //       SizedBox(
                    //         width: 35,
                    //         height: 35,
                    //         child: Image.asset('asset/Drawer icons/google_img.png'),
                    //       )
                    //     ],
                    //   ),
                    // )