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

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://firebasestorage.googleapis.com/v0/b/schedule-86dbd.appspot.com/o/Untitled%20Video.mp4?alt=media&token=37ed2ca2-50ce-4885-99fc-ee25a73c26b8'))
      ..initialize().then((_) {
        setState(() {});
      });

    _controller.setLooping(true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return _buildWideLayout(context);
          } else {
            return _buildNarrowLayout(context);
          }
        },
      ),
    );
  }

  Widget _buildWideLayout(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: size.width * 0.6,
            child: _buildLeftColumn(context),
          ),
          SizedBox(
            width: size.width * 0.4,
            child: _buildRightColumn(context),
          ),
        ],
      ),
    );
  }

  Widget _buildNarrowLayout(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildNameContainer(context),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: _buildVideoPlayer(context, isNarrow: true),
          ),
          _buildPlayPauseButton(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: _buildLottieAnimation(context),
          ),
          _buildSocialButtons(context),
        ],
      ),
    );
  }

  Widget _buildLeftColumn(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        _buildNameContainer(context),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _buildLottieAnimation(context),
        ),
        const SizedBox(height: 70),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: _buildSocialButtons(context),
        ),
      ],
    );
  }

  Widget _buildNameContainer(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).focusColor,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.all(20),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: const Text(
          "LUIS FABIAN MUÑOZ ORTIZ",
          style: TextStyle(
            fontFamily: "Courier New",
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildLottieAnimation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).secondaryHeaderColor,
      ),
      width: 400,
      height: 280,
      child: Lottie.network(
        "https://assets2.lottiefiles.com/private_files/lf30_obidsi0t.json",
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _buildSocialButtons(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceAround,
      spacing: 10,
      runSpacing: 10,
      children: [
        _buildSocialButton(
          context,
          icon: Icons.email,
          label: "Email",
          onPressed: () {
            String quote = "luiisfabian96@gmail.com";
            Clipboard.setData(ClipboardData(text: quote)).then((value) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Email copiado al portapapeles')),
              );
            });
          },
        ),
        _buildSocialButton(
          context,
          icon: FontAwesomeIcons.github,
          label: "Github",
          onPressed: () async {
            final Uri url = Uri.parse('https://github.com/luiisfabian');
            if (!await launchUrl(url)) {
              throw Exception('Could not launch $url');
            }
          },
        ),
        _buildSocialButton(
          context,
          icon: FontAwesomeIcons.linkedin,
          label: "LinkedIn",
          onPressed: () async {
            final Uri url = Uri.parse(
                'https://www.linkedin.com/in/fabian-mu%C3%B1oz-96463b116/');
            if (!await launchUrl(url)) {
              throw Exception('Could not launch $url');
            }
          },
        ),
      ],
    );
  }

  Widget _buildSocialButton(BuildContext context,
      {required IconData icon, required String label, required VoidCallback onPressed}) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        foregroundColor: Theme.of(context).primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(label),
    );
  }

  Widget _buildRightColumn(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildVideoPlayer(context),
          const SizedBox(height: 10),
          _buildPlayPauseButton(),
        ],
      ),
    );
  }

  Widget _buildVideoPlayer(BuildContext context, {bool isNarrow = false}) {
    double maxWidth = isNarrow ? 400 : 450;
    double maxHeight = isNarrow ? 250 : 480;

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).secondaryHeaderColor,
      ),
      child: _controller.value.isInitialized
          ? ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: maxWidth,
                maxHeight: maxHeight,
              ),
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
            )
          : SizedBox(
              width: maxWidth,
              height: maxHeight,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
    );
  }

  Widget _buildPlayPauseButton() {
    return TextButton(
      onPressed: () {
        setState(() {
          if (_controller.value.isPlaying) {
            _controller.pause();
          } else {
            _controller.play();
          }
        });
      },
      child: Icon(
        _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        color: Colors.black,
        size: 30,
      ),
    );
  }
}