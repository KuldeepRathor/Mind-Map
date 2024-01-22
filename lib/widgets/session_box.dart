import 'package:custom_full_image_screen/custom_full_image_screen.dart';
import 'package:flutter/material.dart';
import 'package:mind_map/constants.dart';
import 'package:mind_map/model/user_details.dart';

class SessionBox extends StatelessWidget {
  const SessionBox({
    super.key,
    required this.time,
    required this.date,
    required this.name,
    required this.classs,
    required this.imgUrl,
    required this.buttonType,
  });

  final String time, date, name, classs, imgUrl, buttonType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 210,
        decoration: BoxDecoration(
          color: Color(0xffa9e6f0),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ImageCachedFullscreen(
                    imageUrl: imgUrl,
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
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      SizedBox(height: 5),
                      Text(
                        classs,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.calendar_month,
                          size: 20,
                          color: Color(0xffD6CCC6),
                        ),
                        SizedBox(width: 5),
                        Text(
                          date,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.alarm,
                          size: 20,
                          color: Color(0xffD6CCC6),
                        ),
                        SizedBox(width: 5),
                        Text(
                          time,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 5),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Center(
                          child: Text(
                          buttonType == '1' ? 'Reschedule' : 'Re-book',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                      Text(
                        'Join Now',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
