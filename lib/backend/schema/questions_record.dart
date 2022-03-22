import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'questions_record.g.dart';

abstract class QuestionsRecord
    implements Built<QuestionsRecord, QuestionsRecordBuilder> {
  static Serializer<QuestionsRecord> get serializer =>
      _$questionsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'question_one')
  int get questionOne;

  @nullable
  @BuiltValueField(wireName: 'question_two')
  int get questionTwo;

  @nullable
  @BuiltValueField(wireName: 'question_three')
  int get questionThree;

  @nullable
  DocumentReference get user;

  @nullable
  @BuiltValueField(wireName: 'answered_on')
  DateTime get answeredOn;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(QuestionsRecordBuilder builder) => builder
    ..questionOne = 0
    ..questionTwo = 0
    ..questionThree = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('questions');

  static Stream<QuestionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  QuestionsRecord._();
  factory QuestionsRecord([void Function(QuestionsRecordBuilder) updates]) =
      _$QuestionsRecord;

  static QuestionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createQuestionsRecordData({
  int questionOne,
  int questionTwo,
  int questionThree,
  DocumentReference user,
  DateTime answeredOn,
}) =>
    serializers.toFirestore(
        QuestionsRecord.serializer,
        QuestionsRecord((q) => q
          ..questionOne = questionOne
          ..questionTwo = questionTwo
          ..questionThree = questionThree
          ..user = user
          ..answeredOn = answeredOn));
