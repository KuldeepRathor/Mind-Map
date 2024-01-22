import 'package:custom_full_image_screen/custom_full_image_screen.dart';
import 'package:flutter/material.dart';
import 'package:mind_map/model/user_details.dart';
import 'package:mind_map/widgets/session_box.dart';
import 'package:mind_map/widgets/upcoming_session_box.dart';

class SessionScreen extends StatelessWidget {
  const SessionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ImageCachedFullscreen(
                  imageUrl: "${UserDetails.profilePhotoUrl}",
                  imageWidth: 50,
                  imageHeight: 50,
                  imageBorderRadius: 125,
                  imageFit: BoxFit.cover,
                  imageDetailsHeight: 450,
                  imageDetailsWidth: 450,
                  withHeroAnimation: true,
                  placeholder: Container(
                    child: Icon(Icons.check),
                  ),
                  errorWidget: Container(
                    child: Icon(Icons.error),
                  ),
                  placeholderDetails: Container(),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_outlined,
                    size: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            const UpcomingSessionBox(
                title: 'Harsh D, LY B.Tech ExTC', time: '7:30 PM - 8:30 PM'),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Row(
                children: [
                  Text(
                    'All Sessions',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 25),
                  ),
                  SizedBox(width: 2),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.blue,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SessionBox(
                      time: "7:30 PM - 8:30 PM",
                      date: "31st March ‘23",
                      name: "Vedant K",
                      classs: "TY B.Tech IT",
                      imgUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKuQdiplXg_nXPbBQ9ee0z7__x5-DrZYg6hXCiBvhGaEmMub7dhdzpXNdSpTzTLgQ-Kmo&usqp=CAU',
                      buttonType: '1',
                    ),
                    SessionBox(
                      time: "7:30 PM - 8:30 PM",
                      date: "31st March ‘23",
                      name: "Tadla V",
                      classs: "LY B.Tech Comps",
                      imgUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBSboAU_GljKfMk_kbLlsurkJf7tvac7xIGSLMwMPkpEYU-D_e8N16yuEqGAVtqOiZ1Y8&usqp=CAU',
                      buttonType: '2',
                    ),
                    SessionBox(
                      time: "7:30 PM - 8:30 PM",
                      date: "31st March ‘23",
                      name: "Sahana V",
                      classs: "TY B.Tech IT",
                      imgUrl:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUKPmu8M0apKcy1oABXStYt3eHAbDCoLsC9OASEYxJXCaDMmSy3IYnujBENMZXQznsSNY&usqp=CAU',
                      buttonType: '1',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
