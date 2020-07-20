import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vitalik/models/song_model.dart';

abstract class CoversService {
  Stream<List<SongModel>> myCovers();

  Future<String> createCover(SongModel songModel) async {
    DocumentReference documentReference =
        Firestore.instance.collection('covers').document();

    await documentReference.setData(songModel.toJson());
    return documentReference.documentID;
  }
}
