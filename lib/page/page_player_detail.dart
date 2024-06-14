import 'package:clash_of_clans_static/blocs/player_bloc.dart';
import 'package:flutter/material.dart';

import '../models/player.dart';

class PagePlayerDetail extends StatelessWidget {
  final PlayerBloc playerBloc;
  PagePlayerDetail({required this.playerBloc});

  @override
  Widget build(BuildContext context) {
    final tag = ModalRoute.of(context)!.settings.arguments as String;
    playerBloc.getPlayerData(tag);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Player Data')
      ),
      body: StreamBuilder<Player>(
        stream: playerBloc.playerStream,
        builder: (context, snapshot){
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          else{
            final player = snapshot.data!;
            return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name: ${player.name}', style: TextStyle(fontSize: 24)),
                    SizedBox(height: 8),
                    Text('Trophies: ${player.trophies}', style: TextStyle(fontSize: 24)),
                  ],
                ),
            );
          }
        },
      ),
    );
  }
}
