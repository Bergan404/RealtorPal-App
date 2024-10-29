import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestionnaireRecord extends FirestoreRecord {
  QuestionnaireRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

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

  // "income_goal" field.
  int? _incomeGoal;
  int get incomeGoal => _incomeGoal ?? 0;
  bool hasIncomeGoal() => _incomeGoal != null;

  // "years_of_experience" field.
  int? _yearsOfExperience;
  int get yearsOfExperience => _yearsOfExperience ?? 0;
  bool hasYearsOfExperience() => _yearsOfExperience != null;

  // "transactions_done" field.
  int? _transactionsDone;
  int get transactionsDone => _transactionsDone ?? 0;
  bool hasTransactionsDone() => _transactionsDone != null;

  // "business_names" field.
  List<String>? _businessNames;
  List<String> get businessNames => _businessNames ?? const [];
  bool hasBusinessNames() => _businessNames != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as DocumentReference?;
    _location = snapshotData['location'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _connectionsMade = castToType<int>(snapshotData['connections_made']);
    _daysAWeek = snapshotData['days_a_week'] as String?;
    _hoursADay = snapshotData['hours_a_day'] as String?;
    _incomeGoal = castToType<int>(snapshotData['income_goal']);
    _yearsOfExperience = castToType<int>(snapshotData['years_of_experience']);
    _transactionsDone = castToType<int>(snapshotData['transactions_done']);
    _businessNames = getDataList(snapshotData['business_names']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('questionnaire');

  static Stream<QuestionnaireRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuestionnaireRecord.fromSnapshot(s));

  static Future<QuestionnaireRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuestionnaireRecord.fromSnapshot(s));

  static QuestionnaireRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuestionnaireRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuestionnaireRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuestionnaireRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuestionnaireRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuestionnaireRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuestionnaireRecordData({
  DocumentReference? userId,
  String? location,
  DateTime? createdTime,
  int? connectionsMade,
  String? daysAWeek,
  String? hoursADay,
  int? incomeGoal,
  int? yearsOfExperience,
  int? transactionsDone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'location': location,
      'created_time': createdTime,
      'connections_made': connectionsMade,
      'days_a_week': daysAWeek,
      'hours_a_day': hoursADay,
      'income_goal': incomeGoal,
      'years_of_experience': yearsOfExperience,
      'transactions_done': transactionsDone,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuestionnaireRecordDocumentEquality
    implements Equality<QuestionnaireRecord> {
  const QuestionnaireRecordDocumentEquality();

  @override
  bool equals(QuestionnaireRecord? e1, QuestionnaireRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userId == e2?.userId &&
        e1?.location == e2?.location &&
        e1?.createdTime == e2?.createdTime &&
        e1?.connectionsMade == e2?.connectionsMade &&
        e1?.daysAWeek == e2?.daysAWeek &&
        e1?.hoursADay == e2?.hoursADay &&
        e1?.incomeGoal == e2?.incomeGoal &&
        e1?.yearsOfExperience == e2?.yearsOfExperience &&
        e1?.transactionsDone == e2?.transactionsDone &&
        listEquality.equals(e1?.businessNames, e2?.businessNames);
  }

  @override
  int hash(QuestionnaireRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.location,
        e?.createdTime,
        e?.connectionsMade,
        e?.daysAWeek,
        e?.hoursADay,
        e?.incomeGoal,
        e?.yearsOfExperience,
        e?.transactionsDone,
        e?.businessNames
      ]);

  @override
  bool isValidKey(Object? o) => o is QuestionnaireRecord;
}
