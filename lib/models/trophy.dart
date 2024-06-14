import 'package:cloud_firestore/cloud_firestore.dart';

class Trophy {
  DocumentReference? nextRef;
  DocumentReference? playerRef;
  DocumentReference? prevRef;
  DateTime timeStamp;
  int trophies;

  Trophy({
    required this.nextRef,
    required this.playerRef,
    required this.prevRef,
    required this.timeStamp,
    required this.trophies,
  });

  factory Trophy.fromJson(Map<String, dynamic> map) {
    return Trophy(
      nextRef: map['next_ref'] as DocumentReference<Object?>?,
      playerRef: map['player_ref'] as DocumentReference<Object?>?,
      prevRef: map['prev_ref'] as DocumentReference<Object?>?,
      timeStamp: map['time_stamp'] != null
          ? DateTime.parse(map['time_stamp'] as String)
          : DateTime.now(),
      trophies: (map['trophies'] as int?) ?? 0,
    );
  }

  @override
  String toString() {
    return 'Trophy{nextRef: $nextRef, playerRef: $playerRef, prevRef: $prevRef, timeStamp: $timeStamp, trophies: $trophies}';
  }

  // Method to convert a Trophy to a Map
  Map<String, dynamic> toJson() {
    return {
      'next_ref': nextRef,
      'player_ref': playerRef,
      'prev_ref': prevRef,
      'time_stamp': timeStamp.toIso8601String(),
      'trophies': trophies,
    };
  }
}

class TrophySnapshot{
  Trophy trophy;
  DocumentReference ref;
  static final CollectionReference _collectionReference = FirebaseFirestore.instance.collection('trophies_data');

  TrophySnapshot({
    required this.trophy,
    required this.ref,
  });

  Map<String, dynamic> toJson() {
    return {
      'trophy': this.trophy,
      'ref': this.ref,
    };
  }

  factory TrophySnapshot.fromJson(DocumentSnapshot docSnap) {
    return TrophySnapshot(
      trophy: Trophy.fromJson(docSnap.data() as Map<String, dynamic>),
      ref: docSnap.reference,
    );
  }

  static Stream<List<TrophySnapshot>> getAllTrophies() {
    var res = _collectionReference.snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => TrophySnapshot.fromJson(doc)).toList()
    );
    // res.listen((data) {
    //   for (var trophy in data) {
    //     print(trophy.toString());
    //   }
    // });
    return res;
  }

  // static Stream<List<TrophySnapshot>> getAll() {
  //   Stream<QuerySnapshot> sqs =
  //   FirebaseFirestore.instance.collection("trophies_data").snapshots();
  //   print("hello");
  //   var res = sqs.map((qs) =>
  //       qs.docs.map((docSnap) => TrophySnapshot.fromJson(docSnap)).toList());
  //   print(res)
  //   return sqs.map((qs) =>
  //       qs.docs.map((docSnap) => TrophySnapshot.fromJson(docSnap)).toList());
  // }
}