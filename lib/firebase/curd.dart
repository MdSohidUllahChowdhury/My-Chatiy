import 'package:cloud_firestore/cloud_firestore.dart';

create() async {
  await FirebaseFirestore.instance
      .collection('Student')
      .doc('Class_03')
      .set({'id': '01', 'name': 'Shakil', 'age': '8'});
}

update() async {
  await FirebaseFirestore.instance
      .collection('Student')
      .doc('Class_03')
      .update({'name': 'Shakil Chowdhury', 'age': '9'});
}

delete() async {
  await FirebaseFirestore.instance
      .collection('Student')
      .doc('Class_03')
      .delete();
}
