import 'package:cloud_firestore/cloud_firestore.dart';

class CallDataBase {
  Future teamRank(Map<String, dynamic> teamRankAndName, String id) async {
    return await FirebaseFirestore.instance
        .collection('ICC ODI RANK')
        .doc(id)
        .set(teamRankAndName);
  }
}
