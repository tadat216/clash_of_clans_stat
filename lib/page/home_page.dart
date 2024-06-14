import 'package:flutter/material.dart';

import '../blocs/player_bloc.dart';

class HomePage extends StatefulWidget {
  final PlayerBloc playerBloc;

  HomePage({required this.playerBloc});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Clash of clans app"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter Player Tag',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final tag = _controller.text.trim();
                if (tag.isNotEmpty) {
                  Navigator.pushNamed(
                    context,
                    '/player',
                    arguments: tag,
                  );
                }
              },
              child: Text('Search'),
            ),
          ],
        ),
      )
    );
  }
}
