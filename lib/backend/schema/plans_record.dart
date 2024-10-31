import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlansRecord extends FirestoreRecord {
  PlansRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "income_goal" field.
  int? _incomeGoal;
  int get incomeGoal => _incomeGoal ?? 0;
  bool hasIncomeGoal() => _incomeGoal != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "years_of_experience" field.
  int? _yearsOfExperience;
  int get yearsOfExperience => _yearsOfExperience ?? 0;
  bool hasYearsOfExperience() => _yearsOfExperience != null;

  // "transactions_done" field.
  int? _transactionsDone;
  int get transactionsDone => _transactionsDone ?? 0;
  bool hasTransactionsDone() => _transactionsDone != null;

  // "connections_made" field.
  int? _connectionsMade;
  int get connectionsMade => _connectionsMade ?? 0;
  bool hasConnectionsMade() => _connectionsMade != null;

  // "days_a_week" field.
  String? _daysAWeek;
  String get daysAWeek => _daysAWeek ?? '';
  bool hasDaysAWeek() => _daysAWeek != null;

  // "hours_a_day" field.
  String? _hoursADay;
  String get hoursADay => _hoursADay ?? '';
  bool hasHoursADay() => _hoursADay != null;

  // "comfort_level" field.
  List<String>? _comfortLevel;
  List<String> get comfortLevel => _comfortLevel ?? const [];
  bool hasComfortLevel() => _comfortLevel != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "what_days" field.
  List<String>? _whatDays;
  List<String> get whatDays => _whatDays ?? const [];
  bool hasWhatDays() => _whatDays != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as DocumentReference?;
    _incomeGoal = castToType<int>(snapshotData['income_goal']);
    _location = snapshotData['location'] as String?;
    _yearsOfExperience = castToType<int>(snapshotData['years_of_experience']);
    _transactionsDone = castToType<int>(snapshotData['transactions_done']);
    _connectionsMade = castToType<int>(snapshotData['connections_made']);
    _daysAWeek = snapshotData['days_a_week'] as String?;
    _hoursADay = snapshotData['hours_a_day'] as String?;
    _comfortLevel = getDataList(snapshotData['comfort_level']);
    _createdTime = snapshotData['created_time'] as DateTime?;
    _whatDays = getDataList(snapshotData['what_days']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('plans')
          : FirebaseFirestore.instance.collectionGroup('plans');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('plans').doc(id);

  static Stream<PlansRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlansRecord.fromSnapshot(s));

  static Future<PlansRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlansRecord.fromSnapshot(s));

  static PlansRecord fromSnapshot(DocumentSnapshot snapshot) => PlansRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlansRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlansRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlansRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlansRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlansRecordData({
  DocumentReference? userId,
  int? incomeGoal,
  String? location,
  int? yearsOfExperience,
  int? transactionsDone,
  int? connectionsMade,
  String? daysAWeek,
  String? hoursADay,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'income_goal': incomeGoal,
      'location': location,
      'years_of_experience': yearsOfExperience,
      'transactions_done': transactionsDone,
      'connections_made': connectionsMade,
      'days_a_week': daysAWeek,
      'hours_a_day': hoursADay,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlansRecordDocumentEquality implements Equality<PlansRecord> {
  const PlansRecordDocumentEquality();

  @override
  bool equals(PlansRecord? e1, PlansRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userId == e2?.userId &&
        e1?.incomeGoal == e2?.incomeGoal &&
        e1?.location == e2?.location &&
        e1?.yearsOfExperience == e2?.yearsOfExperience &&
        e1?.transactionsDone == e2?.transactionsDone &&
        e1?.connectionsMade == e2?.connectionsMade &&
        e1?.daysAWeek == e2?.daysAWeek &&
        e1?.hoursADay == e2?.hoursADay &&
        listEquality.equals(e1?.comfortLevel, e2?.comfortLevel) &&
        e1?.createdTime == e2?.createdTime &&
        listEquality.equals(e1?.whatDays, e2?.whatDays);
  }

  @override
  int hash(PlansRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.incomeGoal,
        e?.location,
        e?.yearsOfExperience,
        e?.transactionsDone,
        e?.connectionsMade,
        e?.daysAWeek,
        e?.hoursADay,
        e?.comfortLevel,
        e?.createdTime,
        e?.whatDays
      ]);

  @override
  bool isValidKey(Object? o) => o is PlansRecord;
}
