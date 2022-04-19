import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

/// Creates list of video players
class RecentVideList extends StatefulWidget {

  const RecentVideList({Key? key}) : super(key: key);

  @override
  _RecentVideListState createState() => _RecentVideListState();
}

class _RecentVideListState extends State<RecentVideList> {
  List titles = [
    "RepaintBoundary",
    "MaterialState",
    "Yellow Underline Text"
  ];
  List description = [
    "Flutter 465K vues il y a deux semaines",
    "Flutter 335K vues il y a 2 mois",
    "Flutter 892K vues il y a 3 mois",
   
  ];
  final List<YoutubePlayerController> _controllers = [
    'cVAGLDuc2xE',
    'CylXr3AF3uU',
    'DUX1uVCewvk'
    
  ]
      .map<YoutubePlayerController>(
        (videoId) => YoutubePlayerController(
          initialVideoId: videoId,
          flags: const YoutubePlayerFlags(
            autoPlay: false,
          ),
        ),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
              children: [
                YoutubePlayer(
                  key: ObjectKey(_controllers[index]),
                  controller: _controllers[index],
                  actionsPadding: const EdgeInsets.only(left: 16.0),
                  bottomActions: [
                    CurrentPosition(),
                    const SizedBox(width: 10.0),
                    ProgressBar(isExpanded: true),
                    const SizedBox(width: 10.0),
                    RemainingDuration(),
                    FullScreenButton(),
                  ],
                ),
                const SizedBox(height: 5),
                ListTile(
                  onTap: (){},
                  title: Text(titles[index],style: const TextStyle(color:Colors.white),),
                  trailing: const Icon(Icons.more_vert),
                  subtitle: Text(description[index])
                )
              ],
            
          );
        },
        itemCount: _controllers.length,
        separatorBuilder: (context, _) => const SizedBox(height: 10.0),
      ),
    );
  }
}