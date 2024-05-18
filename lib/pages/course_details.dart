import 'package:e_learning/pages/custom_appbar.dart';
import 'package:e_learning/util/colors.dart';
import 'package:flutter/material.dart';

// import 'package:video_player/video_player.dart';

class CourseDetails extends StatefulWidget {
  final String courseName;
  const CourseDetails({super.key, required this.courseName});

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  // late VideoPlayerController _controller;

  @override
  // void initState() {
  //   super.initState();
  //   _controller = VideoPlayerController.networkUrl(Uri.parse(
  //       'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
  //     ..initialize().then((_) {
  //       // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
  //       setState(() {});
  //     });
  // }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: customAppbar(
        context: context,
        tittle: widget.courseName,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * .28,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    const BoxShadow(
                        color: Colors.black, blurRadius: 5, spreadRadius: .1)
                  ]),
              child: Icon(
                Icons.play_circle,
                size: 55,
                color: AppColors.primarycolor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Software Development with Flutter',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Row(
              children: [
                Text('Created by'),
                Text(
                  " Imran Immi",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.purple),
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.star_border_outlined),
                    Text('4.8'),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.punch_clock_outlined),
                    Text('72 Hours')
                  ],
                ),
                Text(
                  '\$40',
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 190,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Text(
                      'Playllist (22)',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Text(
                      'Description',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                        leading: Icon(
                          Icons.play_circle_fill_rounded,
                          size: 45,
                          color: Colors.purple,
                        ),
                        title: Text(
                          'Introduction',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        subtitle: Text('2 Min 18 Sec'),
                        trailing: Icon(
                          Icons.check_circle_outline_outlined,
                          size: 30,
                          color: Colors.green,
                        )),
                    ListTile(
                        leading: Icon(
                          Icons.play_circle_outline,
                          size: 45,
                          color: Colors.purple,
                        ),
                        title: Text(
                          'What is Software Development?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        subtitle: Text('18 Min 56 Sec'),
                        trailing: Icon(
                          Icons.lock_reset_outlined,
                          size: 30,
                          color: Colors.orange,
                        )),
                    ListTile(
                        leading: Icon(
                          Icons.play_circle_outline,
                          size: 45,
                          color: Colors.purple,
                        ),
                        title: Text(
                          'Welcome to Flutter Masterclass',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        subtitle: Text('20 Min 07 Sec'),
                        trailing: Icon(
                          Icons.lock_reset_outlined,
                          size: 30,
                          color: Colors.orange,
                        )),
                    ListTile(
                        leading: Icon(
                          Icons.play_circle_outline,
                          size: 45,
                          color: Colors.purple,
                        ),
                        title: Text(
                          'What is Software Development?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        subtitle: Text('18 Min 56 Sec'),
                        trailing: Icon(
                          Icons.lock_reset_outlined,
                          size: 30,
                          color: Colors.orange,
                        )),
                    ListTile(
                        leading: Icon(
                          Icons.play_circle_outline,
                          size: 45,
                          color: Colors.purple,
                        ),
                        title: Text(
                          'Flutter Widgets',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        subtitle: Text('42 Min 16 Sec'),
                        trailing: Icon(
                          Icons.lock_reset_outlined,
                          size: 30,
                          color: Colors.orange,
                        )),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 55,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.orange),
                  child: const Icon(
                    Icons.file_copy,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
                Container(
                    height: 55,
                    width: 290,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.purple),
                    child: const Center(
                      child: Text(
                        'Enroll Now',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
