// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QuestionsRecord> _$questionsRecordSerializer =
    new _$QuestionsRecordSerializer();

class _$QuestionsRecordSerializer
    implements StructuredSerializer<QuestionsRecord> {
  @override
  final Iterable<Type> types = const [QuestionsRecord, _$QuestionsRecord];
  @override
  final String wireName = 'QuestionsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, QuestionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.questionOne;
    if (value != null) {
      result
        ..add('question_one')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.questionTwo;
    if (value != null) {
      result
        ..add('question_two')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.questionThree;
    if (value != null) {
      result
        ..add('question_three')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DocumentReference)));
    }
    value = object.answeredOn;
    if (value != null) {
      result
        ..add('answered_on')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DocumentReference)));
    }
    return result;
  }

  @override
  QuestionsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuestionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'question_one':
          result.questionOne = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'question_two':
          result.questionTwo = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'question_three':
          result.questionThree = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(DocumentReference))
              as DocumentReference;
          break;
        case 'answered_on':
          result.answeredOn = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(DocumentReference))
              as DocumentReference;
          break;
      }
    }

    return result.build();
  }
}

class _$QuestionsRecord extends QuestionsRecord {
  @override
  final int questionOne;
  @override
  final int questionTwo;
  @override
  final int questionThree;
  @override
  final DocumentReference user;
  @override
  final DateTime answeredOn;
  @override
  final DocumentReference reference;

  factory _$QuestionsRecord([void Function(QuestionsRecordBuilder) updates]) =>
      (new QuestionsRecordBuilder()..update(updates)).build();

  _$QuestionsRecord._(
      {this.questionOne,
      this.questionTwo,
      this.questionThree,
      this.user,
      this.answeredOn,
      this.reference})
      : super._();

  @override
  QuestionsRecord rebuild(void Function(QuestionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionsRecordBuilder toBuilder() =>
      new QuestionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionsRecord &&
        questionOne == other.questionOne &&
        questionTwo == other.questionTwo &&
        questionThree == other.questionThree &&
        user == other.user &&
        answeredOn == other.answeredOn &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, questionOne.hashCode), questionTwo.hashCode),
                    questionThree.hashCode),
                user.hashCode),
            answeredOn.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('QuestionsRecord')
          ..add('questionOne', questionOne)
          ..add('questionTwo', questionTwo)
          ..add('questionThree', questionThree)
          ..add('user', user)
          ..add('answeredOn', answeredOn)
          ..add('reference', reference))
        .toString();
  }
}

class QuestionsRecordBuilder
    implements Builder<QuestionsRecord, QuestionsRecordBuilder> {
  _$QuestionsRecord _$v;

  int _questionOne;
  int get questionOne => _$this._questionOne;
  set questionOne(int questionOne) => _$this._questionOne = questionOne;

  int _questionTwo;
  int get questionTwo => _$this._questionTwo;
  set questionTwo(int questionTwo) => _$this._questionTwo = questionTwo;

  int _questionThree;
  int get questionThree => _$this._questionThree;
  set questionThree(int questionThree) => _$this._questionThree = questionThree;

  DocumentReference _user;
  DocumentReference get user => _$this._user;
  set user(DocumentReference user) => _$this._user = user;

  DateTime _answeredOn;
  DateTime get answeredOn => _$this._answeredOn;
  set answeredOn(DateTime answeredOn) => _$this._answeredOn = answeredOn;

  DocumentReference _reference;
  DocumentReference get reference => _$this._reference;
  set reference(DocumentReference reference) => _$this._reference = reference;

  QuestionsRecordBuilder() {
    QuestionsRecord._initializeBuilder(this);
  }

  QuestionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _questionOne = $v.questionOne;
      _questionTwo = $v.questionTwo;
      _questionThree = $v.questionThree;
      _user = $v.user;
      _answeredOn = $v.answeredOn;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionsRecord;
  }

  @override
  void update(void Function(QuestionsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$QuestionsRecord build() {
    final _$result = _$v ??
        new _$QuestionsRecord._(
            questionOne: questionOne,
            questionTwo: questionTwo,
            questionThree: questionThree,
            user: user,
            answeredOn: answeredOn,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
