import 'package:clash_of_clans_static/model/trophy.dart';
import 'package:flutter/material.dart';


class PageTrophyData extends StatelessWidget {
  const PageTrophyData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<List<TrophySnapshot>>(
        stream: TrophySnapshot.getAllTrophies(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          else if(snapshot.hasError){
            return const Center(
              child: Text("Error!"),
            );
          }
          else{
            var trophies = snapshot.data!;
            return ListView.separated(
                itemBuilder: (context, index){
                  final trophy = trophies[index];
                  return ListTile(
                    title: Text('${index} Trophies: ${trophy.trophy.trophies}'),
                  );
                },
                separatorBuilder: (context, index) => Divider(thickness: 0.5,),
                itemCount: trophies.length
            );
          }
        },
      )
    );
  }
}
