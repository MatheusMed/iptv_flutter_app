import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';

class VideoPlayerApp extends StatefulWidget {
  final String link;
  final String name;
  const VideoPlayerApp({super.key, required this.link, required this.name});

  @override
  // ignore: library_private_types_in_public_api
  _VideoPlayerAppState createState() => _VideoPlayerAppState();
}

class _VideoPlayerAppState extends State<VideoPlayerApp> {
  late final VlcPlayerController _controller;
  // late ChromeCastController _controllerChrome;
  bool isPlay = true;
  bool transpButton = false;
  bool rotate = false;

  @override
  void initState() {
    super.initState();
    _controller = VlcPlayerController.network(widget.link);
    Future.delayed(const Duration(milliseconds: 800)).then((value) {
      setState(() {
        transpButton = true;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        print('caiu aqui');
        setState(() {
          transpButton = false;
        });
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(widget.name),
          actions: const [
            // ChromeCastButton(
            //   onButtonCreated: (controller) {
            //     setState(() => _controllerChrome = controller);
            //     _controllerChrome.addSessionListener();
            //   },
            //   onSessionStarted: () {
            //     _controllerChrome.loadMedia(widget.link);
            //   },
            // ),
          ],
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: VlcPlayer(
                // virtualDisplay: true,
                controller: _controller,
                aspectRatio: screenSize.width / screenSize.height,
                placeholder: const Center(child: CircularProgressIndicator()),
              ),
            ),
            transpButton == false
                ? AnimatedContainer(
                    duration: const Duration(milliseconds: 600),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.withOpacity(0.6),
                      ),
                      onPressed: () {
                        if (isPlay == false) {
                          try {
                            setState(() {
                              _controller.setMediaFromNetwork(widget.link);
                              _controller.play();
                              isPlay = true;
                              transpButton = true;
                            });
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(e.toString())));
                          }
                        } else if (isPlay == true) {
                          setState(() {
                            _controller.pause();
                            isPlay = false;
                          });
                        }
                      },
                      child:
                          Icon(isPlay == true ? Icons.pause : Icons.play_arrow),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
        floatingActionButton: FloatingActionButton.small(
          onPressed: () {
            if (rotate == false) {
              SystemChrome.setPreferredOrientations([
                DeviceOrientation.landscapeRight,
                DeviceOrientation.landscapeLeft,
              ]);
              setState(() {
                rotate = true;
              });
            } else {
              SystemChrome.setPreferredOrientations([
                DeviceOrientation.portraitUp,
                DeviceOrientation.portraitDown,
              ]);
              setState(() {
                rotate = true;
              });
            }
          },
          child: const Icon(Icons.screen_rotation),
        ),
      ),
    );
  }
}
