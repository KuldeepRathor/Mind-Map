import 'package:custom_full_image_screen/custom_full_image_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mind_map/features/profile/edit_profile_page.dart';
import 'package:mind_map/login.dart';
import 'package:mind_map/model/user_details.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  var followers, following, frndList = [], frndList2 = [];
  bool noFollowing = false;
  bool noFollowers = false;

  // Future getData() async {
  //   // Following Retrieval
  //   var _doc = await FirebaseFirestore.instance
  //       .collection("Following")
  //       .doc(UserDetails.uid)
  //       .get();
  //   bool docStatus = _doc.exists;
  //   if (docStatus == false) {
  //     setState(() {
  //       noFollowing = true;
  //     });
  //   } else {
  //     if (_doc['Following'].length == null || _doc['Following'].length == 0) {
  //       setState(() {
  //         noFollowing = true;
  //       });
  //     } else {
  //       setState(() {
  //         following = _doc['Following'];
  //         // print(following);
  //       });
  //     }
  //   }

  //   // Followers Retrieval
  //   var _doc1 = await FirebaseFirestore.instance
  //       .collection("Followers")
  //       .doc(UserDetails.uid)
  //       .get();
  //   bool docStatus1 = _doc1.exists;
  //   if (docStatus1 == false) {
  //     setState(() {
  //       noFollowers = true;
  //     });
  //   } else {
  //     setState(() {
  //       followers = _doc1['Followers'];
  //       print(followers);
  //     });
  //   }
  // }

  @override
  void initState() {
    super.initState();

    // WidgetsBinding.instance!.addPostFrameCallback((_) {
    //   getData();
    // });
    //   getData().then((value) async {
    //     for (int i = 0; i < following.length; i++) {
    //       var curr_doc = await FirebaseFirestore.instance
    //           .collection("Users")
    //           .doc(following[i]['UID'])
    //           .get();

    //       Map<String, dynamic> mp = {
    //         "Info": {
    //           'Name': curr_doc['Info']['Name'],
    //           'Username': curr_doc['Info']['Username'],
    //           'Email': curr_doc['Info']['Email'],
    //           'Uid': curr_doc['Info']['Uid'],
    //           'BgPhotoUrl': curr_doc['Info']['BgPhotoUrl'],
    //           'ProfilePhotoUrl': curr_doc['Info']['ProfilePhotoUrl'],
    //           'TagLine': curr_doc['Info']['TagLine'],
    //           'Profession': curr_doc['Info']['Profession'],
    //           'Location': curr_doc['Info']['Location'],
    //           'DOB': curr_doc['Info']['DOB'],
    //           'PhoneNumber': curr_doc['Info']['PhoneNumber'],
    //         }
    //       };
    //       frndList.add(mp);
    //     }
    //     // print(frndList);
    //     setState(() {});
    //   });
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: deviceWidth,
          height: deviceHeight,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Container(
                          color: Colors.transparent,
                          height: deviceHeight * 0.30,
                          width: deviceWidth,
                          child: Stack(
                            children: [
                              ImageCachedFullscreen(
                                imageUrl: "${UserDetails.bgPhotoUrl}",
                                imageWidth: deviceWidth,
                                imageHeight: deviceHeight * 0.25,
                                imageFit: BoxFit.fitWidth,
                                imageDetailsHeight: 450,
                                imageDetailsWidth: 400,
                                withHeroAnimation: true,
                                placeholder: Container(
                                  child: const Icon(Icons.check),
                                ),
                                errorWidget: Container(
                                  child: const Icon(Icons.error),
                                ),
                                placeholderDetails: Container(),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: ImageCachedFullscreen(
                                  imageUrl: "${UserDetails.profilePhotoUrl}",
                                  imageWidth: 125,
                                  imageHeight: 122,
                                  imageBorderRadius: 125,
                                  imageFit: BoxFit.cover,
                                  imageDetailsHeight: 450,
                                  imageDetailsWidth: 450,
                                  withHeroAnimation: true,
                                  placeholder: Container(
                                    child: const Icon(Icons.check),
                                  ),
                                  errorWidget: Container(
                                    child: const Icon(Icons.error),
                                  ),
                                  placeholderDetails: Container(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 25),
                        Text(
                          "${UserDetails.name}",
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Lato',
                              fontSize: 20,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.bold,
                              height: 1),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          "${UserDetails.profession}",
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Lato',
                              fontSize: 14,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                        const SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const EditProfile();
                                },
                              ),
                            );
                          },
                          child: Container(
                            width: 151,
                            height: 46,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              border: Border.all(
                                color: const Color.fromRGBO(0, 0, 0, 1),
                                width: 1,
                              ),
                            ),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Edit your profile',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'Lato',
                                    fontSize: 16,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 35),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        'Work at:',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 0.5),
                                            fontFamily: 'Lato',
                                            fontSize: 16,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        "${UserDetails.profession}",
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontFamily: 'Lato',
                                            fontSize: 16,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        'Birthday :',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 0.5),
                                            fontFamily: 'Lato',
                                            fontSize: 16,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        "${UserDetails.dob}",
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontFamily: 'Lato',
                                            fontSize: 16,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Row(
                                      children: [
                                        const Text(
                                          'Followed By :',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.5),
                                              fontFamily: 'Lato',
                                              fontSize: 16,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          followers == null
                                              ? "0 People"
                                              : '${followers.length} People',
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              color: Colors.blue,
                                              fontFamily: 'Lato',
                                              fontSize: 16,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        'Live in :',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 0.5),
                                            fontFamily: 'Lato',
                                            fontSize: 16,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        "${UserDetails.location}",
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                            color: Color.fromRGBO(0, 0, 0, 1),
                                            fontFamily: 'Lato',
                                            fontSize: 16,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  await GoogleSignIn().signOut();
                  FirebaseAuth.instance.signOut();
                  Get.to(const Login());
                },
                child: const Text("Logout"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
