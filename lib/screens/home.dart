import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tunes/components/data.dart';
import 'package:tunes/components/notes_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    AudioPlayer player = AudioPlayer();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Tune',
          style: TextStyle(
            color: Color(0xFFE2E2E5),
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: Icon(Icons.menu, color: Color(0xFFE2E2E5)),
        backgroundColor: Color(0xFF121416),
      ),
      backgroundColor: Color(0xFF121416),
      body: Column(
        children: [
          SizedBox(height: 20),

          for (int i = 0; i < Data.colors.length; i++)
            Expanded(
              child: NotesCard(
                color: Data.colors[i],
                icon: Data.icons[i],
                title: Data.mainText[i],
                subtitle: Data.subText[i],
                onTap: () async {
                  await player.stop();
                  await player.play(AssetSource(Data.audioPaths[i]));
                },
              ),
            ),

          SizedBox(height: 20),
        ],
      ),
    );
  }
}
