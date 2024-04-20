import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intrusion/Models/Alert/alert.dart';

class CRUD{
  Stream<List<AlertIntrusion>> alertstream() => FirebaseFirestore.instance
      .collection('alerts').orderBy('id',descending: true)
      .snapshots()
      .map((snaphot) =>
      snaphot.docs.map((doc) => AlertIntrusion.fromJson(doc.data())).toList());
}