import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';

class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({super.key});

  @override
  State<WellcomeScreen> createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/media/login-modern.mp4')
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        _controller.setVolume(0);
        // Ensure the first frame is shown after the video is initialized
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(32, 41, 51, 1),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                width: screenW,
                height: screenH * 0.61,
                child: Stack(
                  children: [
                    VideoPlayer(_controller),
                    Container(
                      width: screenW,
                      height: screenH * 0.61,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(32, 41, 51, 0.32),
                            Color.fromRGBO(32, 41, 51, 1),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenH * 0.35,
                  ),
                  Image.asset(
                    'assets/media/app-logo.png',
                    scale: 2,
                  ),
                  SizedBox(
                    height: screenH * 0.034,
                  ),
                  const Text(
                    'Milions of Songs.\nFree on Tunify',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Sf',
                      fontWeight: FontWeight.w600,
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: screenH * 0.023,
                  ),
                  const Text(
                    'I can chase you and I can catch you, but there\nis nothing I can do to mae you mine',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Sf',
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: screenH * 0.034,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(screenW * 0.86, screenH * 0.058),
                      backgroundColor: const Color.fromRGBO(95, 25, 242, 1),
                      surfaceTintColor: const Color.fromRGBO(104, 34, 251, 1),
                      shadowColor: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Sing up free',
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Sf',
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenH * 0.023,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(screenW * 0.86, screenH * 0.058),
                      padding: const EdgeInsets.all(0),
                      backgroundColor: const Color.fromRGBO(32, 41, 51, 1),
                      surfaceTintColor: const Color.fromRGBO(41, 50, 60, 1),
                      shadowColor: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: SizedBox(
                      width: screenW * 0.86,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/media/google-logo.png',
                                scale: 2,
                              ),
                              const Text(
                                'Continue with Google',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Sf',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenH * 0.012,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(screenW * 0.86, screenH * 0.058),
                      padding: const EdgeInsets.all(0),
                      backgroundColor: const Color.fromRGBO(32, 41, 51, 1),
                      surfaceTintColor: const Color.fromRGBO(41, 50, 60, 1),
                      shadowColor: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: SizedBox(
                      width: screenW * 0.86,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/media/apple-logo.png',
                                scale: 2,
                              ),
                              const Text(
                                'Continue with Google',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Sf',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenH * 0.045,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(screenW * 0.86, screenH * 0.058),
                      padding: const EdgeInsets.all(0),
                      backgroundColor: const Color.fromRGBO(32, 41, 51, 1),
                      surfaceTintColor: const Color.fromRGBO(41, 50, 60, 1),
                      shadowColor: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Sf',
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
