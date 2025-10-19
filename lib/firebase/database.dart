import 'package:cloud_firestore/cloud_firestore.dart';

class CallDataBase {
  Future singUpUserInfo(Map<String, dynamic> userInfo, String id) async {
    return await FirebaseFirestore.instance
        .collection('User Sing Up Info')
        .doc(id)
        .set(userInfo);
  }

  Future<Stream<QuerySnapshot>> snap() async {
    return await FirebaseFirestore.instance
        .collection('User Sing Up Info')
        .snapshots();
  }
}
