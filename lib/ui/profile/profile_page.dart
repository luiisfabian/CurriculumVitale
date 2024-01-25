import 'package:curriculum_vitale/widgets/circle.dart';
import 'package:curriculum_vitale/widgets/square.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late VideoPlayerController _controller;
  // late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://firebasestorage.googleapis.com/v0/b/schedule-86dbd.appspot.com/o/Untitled%20Video.mp4?alt=media&token=37ed2ca2-50ce-4885-99fc-ee25a73c26b8'))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });

    // Initialize the controller and store the Future for later use.
    // _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Row(children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "LUIS FABIAN MUÑOZ ORTIZ",
                      style: TextStyle(
                          fontFamily: "Courier New",
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey),
                      width: size.width * 0.3,
                      height: size.height * 0.9,
                      child: Lottie.network(
                          "https://assets2.lottiefiles.com/private_files/lf30_obidsi0t.json"),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Container(
                        width: size.width * 0.3,
                        height: size.height * 0.1,
                        child: Wrap(
                          alignment: WrapAlignment.spaceAround,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextButton.icon(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.grey)),
                              onPressed: () {
                                String quote = "luiisfabian96@gmail.com";
                                Clipboard.setData(ClipboardData(text: quote))
                                    .then((value) {
                                  final snackBar = SnackBar(
                                    content: Text('Email'),
                                    action: SnackBarAction(
                                      label: 'Undo',
                                      onPressed: () {},
                                    ),
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(snackBar);

                                });
                              },
                              icon: Icon(
                                Icons.email,
                                color: Colors.black,
                              ),
                              label: Text(
                                "Email",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            TextButton.icon(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.grey)),
                              onPressed: () async {
                                final Uri url =
                                    Uri.parse('https://github.com/luiisfabian');
                                if (await launchUrl(url)) {
                                  throw Exception('Could not launch $url');
                                }
                              },
                              icon: FaIcon(
                                FontAwesomeIcons.github,
                                color: Colors.black,
                              ),
                              label: Text(
                                "Github",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.05,
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
              child: Column(
                children: [
                  Container(
                    // width: size.width * 0.5,

                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey),
                    width: size.width * 0.2,
                    height: size.height * 0.7,
                    child: _controller.value.isInitialized
                        ? Container(
                              width: size.width * 0.3,
                    height: size.height * 0.7,
                          child: AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              child: VideoPlayer(_controller),
                            ),
                        )
                        : const Center(
                            child: CircularProgressIndicator(),
                          ),
                  ),
                  Center(
                    child: _controller.value.isInitialized
                        ? Container(
                          
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  // If the video is playing, pause it.
                                  if (_controller.value.isPlaying) {
                                    _controller.pause();
                                  } else {
                                    // If the video is paused, play it.
                                    _controller.play();
                                  }
                                });
                              },
                              child: Icon(
                                _controller.value.isPlaying
                                    ? Icons.pause
                                    : Icons.play_arrow,
                                color: Colors.black,
                              ),
                            ),
                          )
                        : Container(),
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
