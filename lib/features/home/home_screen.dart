import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnVVc2VDK5p-WDPdl-BzF5TbI8DwokAdjHU-YU9C4gscDaFgRcWkBJQ35lHYH2SxOlG_s&usqp=CAU",
                    ),
                    radius: 30,
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_outlined,
                      size: 40,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              const Text(
                'Welcome Back,',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                'Siddharth!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              const Text(
                'How are you feeling today ?',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Moods(
                      moodtext: 'Happy',
                      moodicon: Icons.sentiment_satisfied_alt_rounded,
                      moodcolor: Colors.orange,
                    ),
                    Moods(
                      moodtext: 'Angry',
                      moodicon: Icons.sentiment_very_dissatisfied_rounded,
                      moodcolor: Colors.red,
                    ),
                    Moods(
                      moodtext: 'Sad',
                      moodicon: Icons.sentiment_dissatisfied_rounded,
                      moodcolor: Colors.yellow,
                    ),
                    Moods(
                      moodtext: 'Excited',
                      moodicon: Icons.sentiment_very_satisfied_rounded,
                      moodcolor: Colors.green,
                    ),
                    Moods(
                      moodtext: 'Anxious',
                      moodicon: Icons.sentiment_very_dissatisfied_rounded,
                      moodcolor: Colors.purple,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                width: double.infinity,
                height: size.height * 0.22,
                decoration: BoxDecoration(
                  color: const Color(0xffa7e7f0),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "1 on 1 Sessions",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Let’s open up to the things \nthat matter the most ",
                              ),
                              SizedBox(
                                height: size.height * 0.025,
                              ),
                              InkWell(
                                onTap: () {
                                  debugPrint("Booking");
                                },
                                child: const Row(
                                  children: [
                                    Text(
                                      "Book Now",
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.calendar_month,
                                      color: Colors.blue,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          // SvgPicture.asset(
                          //   'assets/svgs/image 1.svg',
                          //   height: 100,
                          // ),
                          const Spacer(),
                          Image.asset(
                            "assets/pngs/image 1.png",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                children: [
                  Container(
                    width: size.width * 0.42,
                    height: size.height * 0.1,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.library_books,
                            size: 30,
                            color: Colors.grey,
                          ),
                          Text(
                            "Journal",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: size.width * 0.42,
                    height: size.height * 0.1,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.book,
                            size: 30,
                            color: Colors.grey,
                          ),
                          Text(
                            "Library",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                width: size.width,
                height: size.height * 0.1,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "“Talk to yourself like you would to\nsomeone you love.”",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.format_quote,
                        size: 50,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                width: double.infinity,
                height: size.height * 0.22,
                decoration: BoxDecoration(
                  color: const Color(0xffa7e7f0),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Assessment",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // SizedBox(
                      //   height: size.height * 0.01,
                      // ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Get back immediate remarks \nand stress relieving exercise",
                              ),
                              SizedBox(
                                height: size.height * 0.025,
                              ),
                              InkWell(
                                onTap: () {
                                  debugPrint("Assessment");
                                },
                                child: const Row(
                                  children: [
                                    Text(
                                      "Start Now",
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.blue,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          // SvgPicture.asset(
                          //   'assets/svgs/image 1.svg',
                          //   height: 100,
                          // ),
                          const Spacer(),
                          Image.asset(
                            "assets/pngs/image 3.png",
                            scale: 1.2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.1,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Moods extends StatelessWidget {
  const Moods({
    super.key,
    required this.moodtext,
    required this.moodicon,
    required this.moodcolor,
  });
  final String moodtext;
  final IconData moodicon;
  final Color moodcolor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                color: moodcolor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                moodicon,
                color: Colors.white,
                size: 55,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              moodtext,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
