import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                const CircleAvatar(
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
            // SizedBox(
            //   height: size.height * 0.01,
            // ),
            // const Text(
            //   'Let\'s get started with your daily checkup.',
            //   style: TextStyle(
            //     fontSize: 20,
            //     fontWeight: FontWeight.w500,
            //   ),
            // ),
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Icon(Icons.tag_faces_sharp),
                      Text("Happy"),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
