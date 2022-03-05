
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ganak_admin/models/cordinates.dart';

Future<List<QueryDocumentSnapshot<Coordinates>>> getCoordinates(String uid,String date)async{
  final coordinates = FirebaseFirestore.instance.collection('Users').doc(uid).collection(date).withConverter<Coordinates>(
    fromFirestore: (snapshot,_)=> Coordinates.fromMap(snapshot.data()!),
    toFirestore: (coordinates,_) => coordinates.toMap(),
  );

  return  coordinates.get().then((snapshot) => snapshot.docs );
}