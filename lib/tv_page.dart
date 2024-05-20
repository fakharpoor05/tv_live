import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tv_live/channel.dart';
import 'package:video_player/video_player.dart';

class TvPage extends StatefulWidget {
  const TvPage({super.key, required this.channel});

  final Channel channel;

  @override
  State<TvPage> createState() => _TvPageState();
}

class _TvPageState extends State<TvPage> {
  ChewieController? chewieController;
  VideoPlayerController? videoPlayerController;
  loadvideo() {
    videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(widget.channel.url))
          ..initialize().then((value) => {
                chewieController = ChewieController(
                  videoPlayerController: videoPlayerController!,
                  autoPlay: true,
                  isLive: true,
                ),
                setState(
                  () {},
                )
              });
  }

  @override
  void initState() {
    loadvideo();
    super.initState();
  }

  @override
  void dispose() {
    videoPlayerController?.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF000000),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 40),
              chewieController == null
                  ? CircularProgressIndicator()
                  : SizedBox(
                      height: 235,
                      child: Chewie(
                        controller: chewieController!,
                      ),
                    ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Image.network(
                          widget.channel.logo,
                          height: 70,
                        ),
                        Text(
                          widget.channel.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Color(0XFF00B4A7),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "لیست شبکه های تلوزیونی",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  TvPage(channel: channels[index])),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFAD310),
                              Color(0xFF000000),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              channels[index].title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Image.network(
                              channels[index].logo,
                              height: 38,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: channels.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
