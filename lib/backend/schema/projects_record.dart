import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjectsRecord extends FirestoreRecord {
  ProjectsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "project_name" field.
  String? _projectName;
  String get projectName => _projectName ?? '';
  bool hasProjectName() => _projectName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "time_created" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  // "investors" field.
  List<DocumentReference>? _investors;
  List<DocumentReference> get investors => _investors ?? const [];
  bool hasInvestors() => _investors != null;

  // "is_completed" field.
  bool? _isCompleted;
  bool get isCompleted => _isCompleted ?? false;
  bool hasIsCompleted() => _isCompleted != null;

  // "completion_rate" field.
  int? _completionRate;
  int get completionRate => _completionRate ?? 0;
  bool hasCompletionRate() => _completionRate != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _owner = snapshotData['owner'] as DocumentReference?;
    _projectName = snapshotData['project_name'] as String?;
    _description = snapshotData['description'] as String?;
    _timeCreated = snapshotData['time_created'] as DateTime?;
    _investors = getDataList(snapshotData['investors']);
    _isCompleted = snapshotData['is_completed'] as bool?;
    _completionRate = castToType<int>(snapshotData['completion_rate']);
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('projects');

  static Stream<ProjectsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProjectsRecord.fromSnapshot(s));

  static Future<ProjectsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProjectsRecord.fromSnapshot(s));

  static ProjectsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProjectsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProjectsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProjectsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProjectsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProjectsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProjectsRecordData({
  DocumentReference? owner,
  String? projectName,
  String? description,
  DateTime? timeCreated,
  bool? isCompleted,
  int? completionRate,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'owner': owner,
      'project_name': projectName,
      'description': description,
      'time_created': timeCreated,
      'is_completed': isCompleted,
      'completion_rate': completionRate,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProjectsRecordDocumentEquality implements Equality<ProjectsRecord> {
  const ProjectsRecordDocumentEquality();

  @override
  bool equals(ProjectsRecord? e1, ProjectsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.owner == e2?.owner &&
        e1?.projectName == e2?.projectName &&
        e1?.description == e2?.description &&
        e1?.timeCreated == e2?.timeCreated &&
        listEquality.equals(e1?.investors, e2?.investors) &&
        e1?.isCompleted == e2?.isCompleted &&
        e1?.completionRate == e2?.completionRate &&
        e1?.image == e2?.image;
  }

  @override
  int hash(ProjectsRecord? e) => const ListEquality().hash([
        e?.owner,
        e?.projectName,
        e?.description,
        e?.timeCreated,
        e?.investors,
        e?.isCompleted,
        e?.completionRate,
        e?.image
      ]);

  @override
  bool isValidKey(Object? o) => o is ProjectsRecord;
}
