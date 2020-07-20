import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vitalik/models/song_model.dart';

import 'covers_service.dart';

class CoversServiceImpl extends CoversService {

  @override
  Stream<List<SongModel>> myCovers() {
    return Firestore.instance
        .collection('covers')
        .snapshots()
        .map((QuerySnapshot snapshot) => snapshot.documents)
        .map((List<DocumentSnapshot> docs) {
      return docs.map((DocumentSnapshot doc) {
        return SongModel.fromJson(doc.data);
      }).toList();
    });
  }

}