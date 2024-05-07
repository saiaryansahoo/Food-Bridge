import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ResturantItemRecord extends FirestoreRecord {
  ResturantItemRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ProductName" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _productName = snapshotData['ProductName'] as String?;
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('resturant_item');

  static Stream<ResturantItemRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResturantItemRecord.fromSnapshot(s));

  static Future<ResturantItemRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResturantItemRecord.fromSnapshot(s));

  static ResturantItemRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResturantItemRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResturantItemRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResturantItemRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResturantItemRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResturantItemRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResturantItemRecordData({
  String? productName,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ProductName': productName,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResturantItemRecordDocumentEquality
    implements Equality<ResturantItemRecord> {
  const ResturantItemRecordDocumentEquality();

  @override
  bool equals(ResturantItemRecord? e1, ResturantItemRecord? e2) {
    return e1?.productName == e2?.productName &&
        e1?.description == e2?.description;
  }

  @override
  int hash(ResturantItemRecord? e) =>
      const ListEquality().hash([e?.productName, e?.description]);

  @override
  bool isValidKey(Object? o) => o is ResturantItemRecord;
}
