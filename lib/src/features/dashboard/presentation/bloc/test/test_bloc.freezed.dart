// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestEventCopyWith<$Res> {
  factory $TestEventCopyWith(TestEvent value, $Res Function(TestEvent) then) =
      _$TestEventCopyWithImpl<$Res, TestEvent>;
}

/// @nodoc
class _$TestEventCopyWithImpl<$Res, $Val extends TestEvent>
    implements $TestEventCopyWith<$Res> {
  _$TestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TestEventImplCopyWith<$Res> {
  factory _$$TestEventImplCopyWith(
          _$TestEventImpl value, $Res Function(_$TestEventImpl) then) =
      __$$TestEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TestEventImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$TestEventImpl>
    implements _$$TestEventImplCopyWith<$Res> {
  __$$TestEventImplCopyWithImpl(
      _$TestEventImpl _value, $Res Function(_$TestEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TestEventImpl with DiagnosticableTreeMixin implements _TestEvent {
  const _$TestEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TestEvent'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TestEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _TestEvent implements TestEvent {
  const factory _TestEvent() = _$TestEventImpl;
}

/// @nodoc
abstract class _$$TitleChangedImplCopyWith<$Res> {
  factory _$$TitleChangedImplCopyWith(
          _$TitleChangedImpl value, $Res Function(_$TitleChangedImpl) then) =
      __$$TitleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$TitleChangedImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$TitleChangedImpl>
    implements _$$TitleChangedImplCopyWith<$Res> {
  __$$TitleChangedImplCopyWithImpl(
      _$TitleChangedImpl _value, $Res Function(_$TitleChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$TitleChangedImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TitleChangedImpl with DiagnosticableTreeMixin implements _TitleChanged {
  const _$TitleChangedImpl(this.title);

  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.titleChanged(title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestEvent.titleChanged'))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleChangedImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleChangedImplCopyWith<_$TitleChangedImpl> get copyWith =>
      __$$TitleChangedImplCopyWithImpl<_$TitleChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements TestEvent {
  const factory _TitleChanged(final String title) = _$TitleChangedImpl;

  String get title;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TitleChangedImplCopyWith<_$TitleChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GradeChangedImplCopyWith<$Res> {
  factory _$$GradeChangedImplCopyWith(
          _$GradeChangedImpl value, $Res Function(_$GradeChangedImpl) then) =
      __$$GradeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double grade});
}

/// @nodoc
class __$$GradeChangedImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$GradeChangedImpl>
    implements _$$GradeChangedImplCopyWith<$Res> {
  __$$GradeChangedImplCopyWithImpl(
      _$GradeChangedImpl _value, $Res Function(_$GradeChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grade = null,
  }) {
    return _then(_$GradeChangedImpl(
      null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$GradeChangedImpl with DiagnosticableTreeMixin implements _GradeChanged {
  const _$GradeChangedImpl(this.grade);

  @override
  final double grade;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.gradeChanged(grade: $grade)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestEvent.gradeChanged'))
      ..add(DiagnosticsProperty('grade', grade));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GradeChangedImpl &&
            (identical(other.grade, grade) || other.grade == grade));
  }

  @override
  int get hashCode => Object.hash(runtimeType, grade);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GradeChangedImplCopyWith<_$GradeChangedImpl> get copyWith =>
      __$$GradeChangedImplCopyWithImpl<_$GradeChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) {
    return gradeChanged(grade);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) {
    return gradeChanged?.call(grade);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (gradeChanged != null) {
      return gradeChanged(grade);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return gradeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return gradeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (gradeChanged != null) {
      return gradeChanged(this);
    }
    return orElse();
  }
}

abstract class _GradeChanged implements TestEvent {
  const factory _GradeChanged(final double grade) = _$GradeChangedImpl;

  double get grade;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GradeChangedImplCopyWith<_$GradeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateChangedImplCopyWith<$Res> {
  factory _$$DateChangedImplCopyWith(
          _$DateChangedImpl value, $Res Function(_$DateChangedImpl) then) =
      __$$DateChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String date});
}

/// @nodoc
class __$$DateChangedImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$DateChangedImpl>
    implements _$$DateChangedImplCopyWith<$Res> {
  __$$DateChangedImplCopyWithImpl(
      _$DateChangedImpl _value, $Res Function(_$DateChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$DateChangedImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DateChangedImpl with DiagnosticableTreeMixin implements _DateChanged {
  const _$DateChangedImpl(this.date);

  @override
  final String date;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.dateChanged(date: $date)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestEvent.dateChanged'))
      ..add(DiagnosticsProperty('date', date));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateChangedImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateChangedImplCopyWith<_$DateChangedImpl> get copyWith =>
      __$$DateChangedImplCopyWithImpl<_$DateChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) {
    return dateChanged(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) {
    return dateChanged?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return dateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return dateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(this);
    }
    return orElse();
  }
}

abstract class _DateChanged implements TestEvent {
  const factory _DateChanged(final String date) = _$DateChangedImpl;

  String get date;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateChangedImplCopyWith<_$DateChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTestResultImplCopyWith<$Res> {
  factory _$$AddTestResultImplCopyWith(
          _$AddTestResultImpl value, $Res Function(_$AddTestResultImpl) then) =
      __$$AddTestResultImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TestResultRequest testResultRequest});
}

/// @nodoc
class __$$AddTestResultImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$AddTestResultImpl>
    implements _$$AddTestResultImplCopyWith<$Res> {
  __$$AddTestResultImplCopyWithImpl(
      _$AddTestResultImpl _value, $Res Function(_$AddTestResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testResultRequest = null,
  }) {
    return _then(_$AddTestResultImpl(
      null == testResultRequest
          ? _value.testResultRequest
          : testResultRequest // ignore: cast_nullable_to_non_nullable
              as TestResultRequest,
    ));
  }
}

/// @nodoc

class _$AddTestResultImpl
    with DiagnosticableTreeMixin
    implements _AddTestResult {
  const _$AddTestResultImpl(this.testResultRequest);

  @override
  final TestResultRequest testResultRequest;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.addTestResult(testResultRequest: $testResultRequest)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestEvent.addTestResult'))
      ..add(DiagnosticsProperty('testResultRequest', testResultRequest));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTestResultImpl &&
            (identical(other.testResultRequest, testResultRequest) ||
                other.testResultRequest == testResultRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, testResultRequest);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTestResultImplCopyWith<_$AddTestResultImpl> get copyWith =>
      __$$AddTestResultImplCopyWithImpl<_$AddTestResultImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) {
    return addTestResult(testResultRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) {
    return addTestResult?.call(testResultRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (addTestResult != null) {
      return addTestResult(testResultRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return addTestResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return addTestResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (addTestResult != null) {
      return addTestResult(this);
    }
    return orElse();
  }
}

abstract class _AddTestResult implements TestEvent {
  const factory _AddTestResult(final TestResultRequest testResultRequest) =
      _$AddTestResultImpl;

  TestResultRequest get testResultRequest;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTestResultImplCopyWith<_$AddTestResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTestResultSuccessfulImplCopyWith<$Res> {
  factory _$$AddTestResultSuccessfulImplCopyWith(
          _$AddTestResultSuccessfulImpl value,
          $Res Function(_$AddTestResultSuccessfulImpl) then) =
      __$$AddTestResultSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TestResponse result});
}

/// @nodoc
class __$$AddTestResultSuccessfulImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$AddTestResultSuccessfulImpl>
    implements _$$AddTestResultSuccessfulImplCopyWith<$Res> {
  __$$AddTestResultSuccessfulImplCopyWithImpl(
      _$AddTestResultSuccessfulImpl _value,
      $Res Function(_$AddTestResultSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$AddTestResultSuccessfulImpl(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as TestResponse,
    ));
  }
}

/// @nodoc

class _$AddTestResultSuccessfulImpl
    with DiagnosticableTreeMixin
    implements _AddTestResultSuccessful {
  const _$AddTestResultSuccessfulImpl(this.result);

  @override
  final TestResponse result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.addTestResultSuccessful(result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestEvent.addTestResultSuccessful'))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTestResultSuccessfulImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTestResultSuccessfulImplCopyWith<_$AddTestResultSuccessfulImpl>
      get copyWith => __$$AddTestResultSuccessfulImplCopyWithImpl<
          _$AddTestResultSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) {
    return addTestResultSuccessful(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) {
    return addTestResultSuccessful?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (addTestResultSuccessful != null) {
      return addTestResultSuccessful(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return addTestResultSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return addTestResultSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (addTestResultSuccessful != null) {
      return addTestResultSuccessful(this);
    }
    return orElse();
  }
}

abstract class _AddTestResultSuccessful implements TestEvent {
  const factory _AddTestResultSuccessful(final TestResponse result) =
      _$AddTestResultSuccessfulImpl;

  TestResponse get result;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTestResultSuccessfulImplCopyWith<_$AddTestResultSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTestResultFailedImplCopyWith<$Res> {
  factory _$$AddTestResultFailedImplCopyWith(_$AddTestResultFailedImpl value,
          $Res Function(_$AddTestResultFailedImpl) then) =
      __$$AddTestResultFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$AddTestResultFailedImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$AddTestResultFailedImpl>
    implements _$$AddTestResultFailedImplCopyWith<$Res> {
  __$$AddTestResultFailedImplCopyWithImpl(_$AddTestResultFailedImpl _value,
      $Res Function(_$AddTestResultFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$AddTestResultFailedImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddTestResultFailedImpl
    with DiagnosticableTreeMixin
    implements _AddTestResultFailed {
  const _$AddTestResultFailedImpl(this.message);

  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.addTestResultFailed(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestEvent.addTestResultFailed'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTestResultFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTestResultFailedImplCopyWith<_$AddTestResultFailedImpl> get copyWith =>
      __$$AddTestResultFailedImplCopyWithImpl<_$AddTestResultFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) {
    return addTestResultFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) {
    return addTestResultFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (addTestResultFailed != null) {
      return addTestResultFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return addTestResultFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return addTestResultFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (addTestResultFailed != null) {
      return addTestResultFailed(this);
    }
    return orElse();
  }
}

abstract class _AddTestResultFailed implements TestEvent {
  const factory _AddTestResultFailed(final String? message) =
      _$AddTestResultFailedImpl;

  String? get message;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTestResultFailedImplCopyWith<_$AddTestResultFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddExamResultImplCopyWith<$Res> {
  factory _$$AddExamResultImplCopyWith(
          _$AddExamResultImpl value, $Res Function(_$AddExamResultImpl) then) =
      __$$AddExamResultImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TestResultRequest examResultRequest});
}

/// @nodoc
class __$$AddExamResultImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$AddExamResultImpl>
    implements _$$AddExamResultImplCopyWith<$Res> {
  __$$AddExamResultImplCopyWithImpl(
      _$AddExamResultImpl _value, $Res Function(_$AddExamResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? examResultRequest = null,
  }) {
    return _then(_$AddExamResultImpl(
      null == examResultRequest
          ? _value.examResultRequest
          : examResultRequest // ignore: cast_nullable_to_non_nullable
              as TestResultRequest,
    ));
  }
}

/// @nodoc

class _$AddExamResultImpl
    with DiagnosticableTreeMixin
    implements _AddExamResult {
  const _$AddExamResultImpl(this.examResultRequest);

  @override
  final TestResultRequest examResultRequest;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.addExamResult(examResultRequest: $examResultRequest)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestEvent.addExamResult'))
      ..add(DiagnosticsProperty('examResultRequest', examResultRequest));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddExamResultImpl &&
            (identical(other.examResultRequest, examResultRequest) ||
                other.examResultRequest == examResultRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, examResultRequest);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddExamResultImplCopyWith<_$AddExamResultImpl> get copyWith =>
      __$$AddExamResultImplCopyWithImpl<_$AddExamResultImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) {
    return addExamResult(examResultRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) {
    return addExamResult?.call(examResultRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (addExamResult != null) {
      return addExamResult(examResultRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return addExamResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return addExamResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (addExamResult != null) {
      return addExamResult(this);
    }
    return orElse();
  }
}

abstract class _AddExamResult implements TestEvent {
  const factory _AddExamResult(final TestResultRequest examResultRequest) =
      _$AddExamResultImpl;

  TestResultRequest get examResultRequest;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddExamResultImplCopyWith<_$AddExamResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddExamResultSuccessfulImplCopyWith<$Res> {
  factory _$$AddExamResultSuccessfulImplCopyWith(
          _$AddExamResultSuccessfulImpl value,
          $Res Function(_$AddExamResultSuccessfulImpl) then) =
      __$$AddExamResultSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TestResponse examResultResponse});
}

/// @nodoc
class __$$AddExamResultSuccessfulImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$AddExamResultSuccessfulImpl>
    implements _$$AddExamResultSuccessfulImplCopyWith<$Res> {
  __$$AddExamResultSuccessfulImplCopyWithImpl(
      _$AddExamResultSuccessfulImpl _value,
      $Res Function(_$AddExamResultSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? examResultResponse = null,
  }) {
    return _then(_$AddExamResultSuccessfulImpl(
      null == examResultResponse
          ? _value.examResultResponse
          : examResultResponse // ignore: cast_nullable_to_non_nullable
              as TestResponse,
    ));
  }
}

/// @nodoc

class _$AddExamResultSuccessfulImpl
    with DiagnosticableTreeMixin
    implements _AddExamResultSuccessful {
  const _$AddExamResultSuccessfulImpl(this.examResultResponse);

  @override
  final TestResponse examResultResponse;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.addExamResultSuccessful(examResultResponse: $examResultResponse)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestEvent.addExamResultSuccessful'))
      ..add(DiagnosticsProperty('examResultResponse', examResultResponse));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddExamResultSuccessfulImpl &&
            (identical(other.examResultResponse, examResultResponse) ||
                other.examResultResponse == examResultResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, examResultResponse);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddExamResultSuccessfulImplCopyWith<_$AddExamResultSuccessfulImpl>
      get copyWith => __$$AddExamResultSuccessfulImplCopyWithImpl<
          _$AddExamResultSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) {
    return addExamResultSuccessful(examResultResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) {
    return addExamResultSuccessful?.call(examResultResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (addExamResultSuccessful != null) {
      return addExamResultSuccessful(examResultResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return addExamResultSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return addExamResultSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (addExamResultSuccessful != null) {
      return addExamResultSuccessful(this);
    }
    return orElse();
  }
}

abstract class _AddExamResultSuccessful implements TestEvent {
  const factory _AddExamResultSuccessful(
      final TestResponse examResultResponse) = _$AddExamResultSuccessfulImpl;

  TestResponse get examResultResponse;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddExamResultSuccessfulImplCopyWith<_$AddExamResultSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddExamResultFailedImplCopyWith<$Res> {
  factory _$$AddExamResultFailedImplCopyWith(_$AddExamResultFailedImpl value,
          $Res Function(_$AddExamResultFailedImpl) then) =
      __$$AddExamResultFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$AddExamResultFailedImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$AddExamResultFailedImpl>
    implements _$$AddExamResultFailedImplCopyWith<$Res> {
  __$$AddExamResultFailedImplCopyWithImpl(_$AddExamResultFailedImpl _value,
      $Res Function(_$AddExamResultFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$AddExamResultFailedImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddExamResultFailedImpl
    with DiagnosticableTreeMixin
    implements _AddExamResultFailed {
  const _$AddExamResultFailedImpl(this.message);

  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.addExamResultFailed(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestEvent.addExamResultFailed'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddExamResultFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddExamResultFailedImplCopyWith<_$AddExamResultFailedImpl> get copyWith =>
      __$$AddExamResultFailedImplCopyWithImpl<_$AddExamResultFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) {
    return addExamResultFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) {
    return addExamResultFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (addExamResultFailed != null) {
      return addExamResultFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return addExamResultFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return addExamResultFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (addExamResultFailed != null) {
      return addExamResultFailed(this);
    }
    return orElse();
  }
}

abstract class _AddExamResultFailed implements TestEvent {
  const factory _AddExamResultFailed(final String? message) =
      _$AddExamResultFailedImpl;

  String? get message;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddExamResultFailedImplCopyWith<_$AddExamResultFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchTestResultsImplCopyWith<$Res> {
  factory _$$FetchTestResultsImplCopyWith(_$FetchTestResultsImpl value,
          $Res Function(_$FetchTestResultsImpl) then) =
      __$$FetchTestResultsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? studentId,
      String? classId,
      String? subjectId,
      String? parentSchoolId});
}

/// @nodoc
class __$$FetchTestResultsImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$FetchTestResultsImpl>
    implements _$$FetchTestResultsImplCopyWith<$Res> {
  __$$FetchTestResultsImplCopyWithImpl(_$FetchTestResultsImpl _value,
      $Res Function(_$FetchTestResultsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = freezed,
    Object? classId = freezed,
    Object? subjectId = freezed,
    Object? parentSchoolId = freezed,
  }) {
    return _then(_$FetchTestResultsImpl(
      freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == parentSchoolId
          ? _value.parentSchoolId
          : parentSchoolId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchTestResultsImpl
    with DiagnosticableTreeMixin
    implements _FetchTestResults {
  const _$FetchTestResultsImpl(
      this.studentId, this.classId, this.subjectId, this.parentSchoolId);

  @override
  final String? studentId;
  @override
  final String? classId;
  @override
  final String? subjectId;
  @override
  final String? parentSchoolId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.fetchTestResults(studentId: $studentId, classId: $classId, subjectId: $subjectId, parentSchoolId: $parentSchoolId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestEvent.fetchTestResults'))
      ..add(DiagnosticsProperty('studentId', studentId))
      ..add(DiagnosticsProperty('classId', classId))
      ..add(DiagnosticsProperty('subjectId', subjectId))
      ..add(DiagnosticsProperty('parentSchoolId', parentSchoolId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTestResultsImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.parentSchoolId, parentSchoolId) ||
                other.parentSchoolId == parentSchoolId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, studentId, classId, subjectId, parentSchoolId);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTestResultsImplCopyWith<_$FetchTestResultsImpl> get copyWith =>
      __$$FetchTestResultsImplCopyWithImpl<_$FetchTestResultsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchTestResults(studentId, classId, subjectId, parentSchoolId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchTestResults?.call(
        studentId, classId, subjectId, parentSchoolId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchTestResults != null) {
      return fetchTestResults(studentId, classId, subjectId, parentSchoolId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchTestResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchTestResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchTestResults != null) {
      return fetchTestResults(this);
    }
    return orElse();
  }
}

abstract class _FetchTestResults implements TestEvent {
  const factory _FetchTestResults(
      final String? studentId,
      final String? classId,
      final String? subjectId,
      final String? parentSchoolId) = _$FetchTestResultsImpl;

  String? get studentId;
  String? get classId;
  String? get subjectId;
  String? get parentSchoolId;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchTestResultsImplCopyWith<_$FetchTestResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchTestResultsSuccessfulImplCopyWith<$Res> {
  factory _$$FetchTestResultsSuccessfulImplCopyWith(
          _$FetchTestResultsSuccessfulImpl value,
          $Res Function(_$FetchTestResultsSuccessfulImpl) then) =
      __$$FetchTestResultsSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FetchTestResponse fetchTestResponse});
}

/// @nodoc
class __$$FetchTestResultsSuccessfulImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$FetchTestResultsSuccessfulImpl>
    implements _$$FetchTestResultsSuccessfulImplCopyWith<$Res> {
  __$$FetchTestResultsSuccessfulImplCopyWithImpl(
      _$FetchTestResultsSuccessfulImpl _value,
      $Res Function(_$FetchTestResultsSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchTestResponse = null,
  }) {
    return _then(_$FetchTestResultsSuccessfulImpl(
      null == fetchTestResponse
          ? _value.fetchTestResponse
          : fetchTestResponse // ignore: cast_nullable_to_non_nullable
              as FetchTestResponse,
    ));
  }
}

/// @nodoc

class _$FetchTestResultsSuccessfulImpl
    with DiagnosticableTreeMixin
    implements _FetchTestResultsSuccessful {
  const _$FetchTestResultsSuccessfulImpl(this.fetchTestResponse);

  @override
  final FetchTestResponse fetchTestResponse;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.fetchTestResultsSuccessful(fetchTestResponse: $fetchTestResponse)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestEvent.fetchTestResultsSuccessful'))
      ..add(DiagnosticsProperty('fetchTestResponse', fetchTestResponse));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTestResultsSuccessfulImpl &&
            (identical(other.fetchTestResponse, fetchTestResponse) ||
                other.fetchTestResponse == fetchTestResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchTestResponse);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTestResultsSuccessfulImplCopyWith<_$FetchTestResultsSuccessfulImpl>
      get copyWith => __$$FetchTestResultsSuccessfulImplCopyWithImpl<
          _$FetchTestResultsSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchTestResultsSuccessful(fetchTestResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchTestResultsSuccessful?.call(fetchTestResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchTestResultsSuccessful != null) {
      return fetchTestResultsSuccessful(fetchTestResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchTestResultsSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchTestResultsSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchTestResultsSuccessful != null) {
      return fetchTestResultsSuccessful(this);
    }
    return orElse();
  }
}

abstract class _FetchTestResultsSuccessful implements TestEvent {
  const factory _FetchTestResultsSuccessful(
          final FetchTestResponse fetchTestResponse) =
      _$FetchTestResultsSuccessfulImpl;

  FetchTestResponse get fetchTestResponse;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchTestResultsSuccessfulImplCopyWith<_$FetchTestResultsSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchTestResultsFailedImplCopyWith<$Res> {
  factory _$$FetchTestResultsFailedImplCopyWith(
          _$FetchTestResultsFailedImpl value,
          $Res Function(_$FetchTestResultsFailedImpl) then) =
      __$$FetchTestResultsFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FetchTestResultsFailedImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$FetchTestResultsFailedImpl>
    implements _$$FetchTestResultsFailedImplCopyWith<$Res> {
  __$$FetchTestResultsFailedImplCopyWithImpl(
      _$FetchTestResultsFailedImpl _value,
      $Res Function(_$FetchTestResultsFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FetchTestResultsFailedImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchTestResultsFailedImpl
    with DiagnosticableTreeMixin
    implements _FetchTestResultsFailed {
  const _$FetchTestResultsFailedImpl(this.message);

  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.fetchTestResultsFailed(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestEvent.fetchTestResultsFailed'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTestResultsFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTestResultsFailedImplCopyWith<_$FetchTestResultsFailedImpl>
      get copyWith => __$$FetchTestResultsFailedImplCopyWithImpl<
          _$FetchTestResultsFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchTestResultsFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchTestResultsFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchTestResultsFailed != null) {
      return fetchTestResultsFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchTestResultsFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchTestResultsFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchTestResultsFailed != null) {
      return fetchTestResultsFailed(this);
    }
    return orElse();
  }
}

abstract class _FetchTestResultsFailed implements TestEvent {
  const factory _FetchTestResultsFailed(final String? message) =
      _$FetchTestResultsFailedImpl;

  String? get message;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchTestResultsFailedImplCopyWith<_$FetchTestResultsFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchExamResultsImplCopyWith<$Res> {
  factory _$$FetchExamResultsImplCopyWith(_$FetchExamResultsImpl value,
          $Res Function(_$FetchExamResultsImpl) then) =
      __$$FetchExamResultsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String studentId,
      String classId,
      String subjectId,
      String? parentSchoolId});
}

/// @nodoc
class __$$FetchExamResultsImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$FetchExamResultsImpl>
    implements _$$FetchExamResultsImplCopyWith<$Res> {
  __$$FetchExamResultsImplCopyWithImpl(_$FetchExamResultsImpl _value,
      $Res Function(_$FetchExamResultsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? classId = null,
    Object? subjectId = null,
    Object? parentSchoolId = freezed,
  }) {
    return _then(_$FetchExamResultsImpl(
      null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String,
      null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == parentSchoolId
          ? _value.parentSchoolId
          : parentSchoolId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchExamResultsImpl
    with DiagnosticableTreeMixin
    implements _FetchExamResults {
  const _$FetchExamResultsImpl(
      this.studentId, this.classId, this.subjectId, this.parentSchoolId);

  @override
  final String studentId;
  @override
  final String classId;
  @override
  final String subjectId;
  @override
  final String? parentSchoolId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.fetchExamResults(studentId: $studentId, classId: $classId, subjectId: $subjectId, parentSchoolId: $parentSchoolId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestEvent.fetchExamResults'))
      ..add(DiagnosticsProperty('studentId', studentId))
      ..add(DiagnosticsProperty('classId', classId))
      ..add(DiagnosticsProperty('subjectId', subjectId))
      ..add(DiagnosticsProperty('parentSchoolId', parentSchoolId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchExamResultsImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.parentSchoolId, parentSchoolId) ||
                other.parentSchoolId == parentSchoolId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, studentId, classId, subjectId, parentSchoolId);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchExamResultsImplCopyWith<_$FetchExamResultsImpl> get copyWith =>
      __$$FetchExamResultsImplCopyWithImpl<_$FetchExamResultsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchExamResults(studentId, classId, subjectId, parentSchoolId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchExamResults?.call(
        studentId, classId, subjectId, parentSchoolId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchExamResults != null) {
      return fetchExamResults(studentId, classId, subjectId, parentSchoolId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchExamResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchExamResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchExamResults != null) {
      return fetchExamResults(this);
    }
    return orElse();
  }
}

abstract class _FetchExamResults implements TestEvent {
  const factory _FetchExamResults(
      final String studentId,
      final String classId,
      final String subjectId,
      final String? parentSchoolId) = _$FetchExamResultsImpl;

  String get studentId;
  String get classId;
  String get subjectId;
  String? get parentSchoolId;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchExamResultsImplCopyWith<_$FetchExamResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchExamResultsSuccessfulImplCopyWith<$Res> {
  factory _$$FetchExamResultsSuccessfulImplCopyWith(
          _$FetchExamResultsSuccessfulImpl value,
          $Res Function(_$FetchExamResultsSuccessfulImpl) then) =
      __$$FetchExamResultsSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FetchExamResponse fetchExamResultResponse});
}

/// @nodoc
class __$$FetchExamResultsSuccessfulImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$FetchExamResultsSuccessfulImpl>
    implements _$$FetchExamResultsSuccessfulImplCopyWith<$Res> {
  __$$FetchExamResultsSuccessfulImplCopyWithImpl(
      _$FetchExamResultsSuccessfulImpl _value,
      $Res Function(_$FetchExamResultsSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchExamResultResponse = null,
  }) {
    return _then(_$FetchExamResultsSuccessfulImpl(
      null == fetchExamResultResponse
          ? _value.fetchExamResultResponse
          : fetchExamResultResponse // ignore: cast_nullable_to_non_nullable
              as FetchExamResponse,
    ));
  }
}

/// @nodoc

class _$FetchExamResultsSuccessfulImpl
    with DiagnosticableTreeMixin
    implements _FetchExamResultsSuccessful {
  const _$FetchExamResultsSuccessfulImpl(this.fetchExamResultResponse);

  @override
  final FetchExamResponse fetchExamResultResponse;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.fetchExamResultsSuccessful(fetchExamResultResponse: $fetchExamResultResponse)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestEvent.fetchExamResultsSuccessful'))
      ..add(DiagnosticsProperty(
          'fetchExamResultResponse', fetchExamResultResponse));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchExamResultsSuccessfulImpl &&
            (identical(
                    other.fetchExamResultResponse, fetchExamResultResponse) ||
                other.fetchExamResultResponse == fetchExamResultResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchExamResultResponse);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchExamResultsSuccessfulImplCopyWith<_$FetchExamResultsSuccessfulImpl>
      get copyWith => __$$FetchExamResultsSuccessfulImplCopyWithImpl<
          _$FetchExamResultsSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchExamResultsSuccessful(fetchExamResultResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchExamResultsSuccessful?.call(fetchExamResultResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchExamResultsSuccessful != null) {
      return fetchExamResultsSuccessful(fetchExamResultResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchExamResultsSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchExamResultsSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchExamResultsSuccessful != null) {
      return fetchExamResultsSuccessful(this);
    }
    return orElse();
  }
}

abstract class _FetchExamResultsSuccessful implements TestEvent {
  const factory _FetchExamResultsSuccessful(
          final FetchExamResponse fetchExamResultResponse) =
      _$FetchExamResultsSuccessfulImpl;

  FetchExamResponse get fetchExamResultResponse;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchExamResultsSuccessfulImplCopyWith<_$FetchExamResultsSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchExamResultsFailedImplCopyWith<$Res> {
  factory _$$FetchExamResultsFailedImplCopyWith(
          _$FetchExamResultsFailedImpl value,
          $Res Function(_$FetchExamResultsFailedImpl) then) =
      __$$FetchExamResultsFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FetchExamResultsFailedImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$FetchExamResultsFailedImpl>
    implements _$$FetchExamResultsFailedImplCopyWith<$Res> {
  __$$FetchExamResultsFailedImplCopyWithImpl(
      _$FetchExamResultsFailedImpl _value,
      $Res Function(_$FetchExamResultsFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FetchExamResultsFailedImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchExamResultsFailedImpl
    with DiagnosticableTreeMixin
    implements _FetchExamResultsFailed {
  const _$FetchExamResultsFailedImpl(this.message);

  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.fetchExamResultsFailed(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestEvent.fetchExamResultsFailed'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchExamResultsFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchExamResultsFailedImplCopyWith<_$FetchExamResultsFailedImpl>
      get copyWith => __$$FetchExamResultsFailedImplCopyWithImpl<
          _$FetchExamResultsFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchExamResultsFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchExamResultsFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchExamResultsFailed != null) {
      return fetchExamResultsFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchExamResultsFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchExamResultsFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchExamResultsFailed != null) {
      return fetchExamResultsFailed(this);
    }
    return orElse();
  }
}

abstract class _FetchExamResultsFailed implements TestEvent {
  const factory _FetchExamResultsFailed(final String? message) =
      _$FetchExamResultsFailedImpl;

  String? get message;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchExamResultsFailedImplCopyWith<_$FetchExamResultsFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchSubjectTestResultsImplCopyWith<$Res> {
  factory _$$FetchSubjectTestResultsImplCopyWith(
          _$FetchSubjectTestResultsImpl value,
          $Res Function(_$FetchSubjectTestResultsImpl) then) =
      __$$FetchSubjectTestResultsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String subjectId});
}

/// @nodoc
class __$$FetchSubjectTestResultsImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$FetchSubjectTestResultsImpl>
    implements _$$FetchSubjectTestResultsImplCopyWith<$Res> {
  __$$FetchSubjectTestResultsImplCopyWithImpl(
      _$FetchSubjectTestResultsImpl _value,
      $Res Function(_$FetchSubjectTestResultsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = null,
  }) {
    return _then(_$FetchSubjectTestResultsImpl(
      null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchSubjectTestResultsImpl
    with DiagnosticableTreeMixin
    implements _FetchSubjectTestResults {
  const _$FetchSubjectTestResultsImpl(this.subjectId);

  @override
  final String subjectId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.fetchSubjectTestResults(subjectId: $subjectId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestEvent.fetchSubjectTestResults'))
      ..add(DiagnosticsProperty('subjectId', subjectId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSubjectTestResultsImpl &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subjectId);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSubjectTestResultsImplCopyWith<_$FetchSubjectTestResultsImpl>
      get copyWith => __$$FetchSubjectTestResultsImplCopyWithImpl<
          _$FetchSubjectTestResultsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchSubjectTestResults(subjectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchSubjectTestResults?.call(subjectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchSubjectTestResults != null) {
      return fetchSubjectTestResults(subjectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchSubjectTestResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchSubjectTestResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchSubjectTestResults != null) {
      return fetchSubjectTestResults(this);
    }
    return orElse();
  }
}

abstract class _FetchSubjectTestResults implements TestEvent {
  const factory _FetchSubjectTestResults(final String subjectId) =
      _$FetchSubjectTestResultsImpl;

  String get subjectId;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchSubjectTestResultsImplCopyWith<_$FetchSubjectTestResultsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchSubjectTestResultsSuccessfulImplCopyWith<$Res> {
  factory _$$FetchSubjectTestResultsSuccessfulImplCopyWith(
          _$FetchSubjectTestResultsSuccessfulImpl value,
          $Res Function(_$FetchSubjectTestResultsSuccessfulImpl) then) =
      __$$FetchSubjectTestResultsSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FetchSubjectTestResult fetchSubjectTestResult});
}

/// @nodoc
class __$$FetchSubjectTestResultsSuccessfulImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res,
        _$FetchSubjectTestResultsSuccessfulImpl>
    implements _$$FetchSubjectTestResultsSuccessfulImplCopyWith<$Res> {
  __$$FetchSubjectTestResultsSuccessfulImplCopyWithImpl(
      _$FetchSubjectTestResultsSuccessfulImpl _value,
      $Res Function(_$FetchSubjectTestResultsSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchSubjectTestResult = null,
  }) {
    return _then(_$FetchSubjectTestResultsSuccessfulImpl(
      null == fetchSubjectTestResult
          ? _value.fetchSubjectTestResult
          : fetchSubjectTestResult // ignore: cast_nullable_to_non_nullable
              as FetchSubjectTestResult,
    ));
  }
}

/// @nodoc

class _$FetchSubjectTestResultsSuccessfulImpl
    with DiagnosticableTreeMixin
    implements _FetchSubjectTestResultsSuccessful {
  const _$FetchSubjectTestResultsSuccessfulImpl(this.fetchSubjectTestResult);

  @override
  final FetchSubjectTestResult fetchSubjectTestResult;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.fetchSubjectTestResultsSuccessful(fetchSubjectTestResult: $fetchSubjectTestResult)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'TestEvent.fetchSubjectTestResultsSuccessful'))
      ..add(DiagnosticsProperty(
          'fetchSubjectTestResult', fetchSubjectTestResult));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSubjectTestResultsSuccessfulImpl &&
            (identical(other.fetchSubjectTestResult, fetchSubjectTestResult) ||
                other.fetchSubjectTestResult == fetchSubjectTestResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchSubjectTestResult);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSubjectTestResultsSuccessfulImplCopyWith<
          _$FetchSubjectTestResultsSuccessfulImpl>
      get copyWith => __$$FetchSubjectTestResultsSuccessfulImplCopyWithImpl<
          _$FetchSubjectTestResultsSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchSubjectTestResultsSuccessful(fetchSubjectTestResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchSubjectTestResultsSuccessful?.call(fetchSubjectTestResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchSubjectTestResultsSuccessful != null) {
      return fetchSubjectTestResultsSuccessful(fetchSubjectTestResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchSubjectTestResultsSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchSubjectTestResultsSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchSubjectTestResultsSuccessful != null) {
      return fetchSubjectTestResultsSuccessful(this);
    }
    return orElse();
  }
}

abstract class _FetchSubjectTestResultsSuccessful implements TestEvent {
  const factory _FetchSubjectTestResultsSuccessful(
          final FetchSubjectTestResult fetchSubjectTestResult) =
      _$FetchSubjectTestResultsSuccessfulImpl;

  FetchSubjectTestResult get fetchSubjectTestResult;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchSubjectTestResultsSuccessfulImplCopyWith<
          _$FetchSubjectTestResultsSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchSubjectTestResultsFailedImplCopyWith<$Res> {
  factory _$$FetchSubjectTestResultsFailedImplCopyWith(
          _$FetchSubjectTestResultsFailedImpl value,
          $Res Function(_$FetchSubjectTestResultsFailedImpl) then) =
      __$$FetchSubjectTestResultsFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FetchSubjectTestResultsFailedImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$FetchSubjectTestResultsFailedImpl>
    implements _$$FetchSubjectTestResultsFailedImplCopyWith<$Res> {
  __$$FetchSubjectTestResultsFailedImplCopyWithImpl(
      _$FetchSubjectTestResultsFailedImpl _value,
      $Res Function(_$FetchSubjectTestResultsFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FetchSubjectTestResultsFailedImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchSubjectTestResultsFailedImpl
    with DiagnosticableTreeMixin
    implements _FetchSubjectTestResultsFailed {
  const _$FetchSubjectTestResultsFailedImpl(this.message);

  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.fetchSubjectTestResultsFailed(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'TestEvent.fetchSubjectTestResultsFailed'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSubjectTestResultsFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSubjectTestResultsFailedImplCopyWith<
          _$FetchSubjectTestResultsFailedImpl>
      get copyWith => __$$FetchSubjectTestResultsFailedImplCopyWithImpl<
          _$FetchSubjectTestResultsFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchSubjectTestResultsFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchSubjectTestResultsFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchSubjectTestResultsFailed != null) {
      return fetchSubjectTestResultsFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchSubjectTestResultsFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchSubjectTestResultsFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchSubjectTestResultsFailed != null) {
      return fetchSubjectTestResultsFailed(this);
    }
    return orElse();
  }
}

abstract class _FetchSubjectTestResultsFailed implements TestEvent {
  const factory _FetchSubjectTestResultsFailed(final String? message) =
      _$FetchSubjectTestResultsFailedImpl;

  String? get message;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchSubjectTestResultsFailedImplCopyWith<
          _$FetchSubjectTestResultsFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchSubjectExamResultsImplCopyWith<$Res> {
  factory _$$FetchSubjectExamResultsImplCopyWith(
          _$FetchSubjectExamResultsImpl value,
          $Res Function(_$FetchSubjectExamResultsImpl) then) =
      __$$FetchSubjectExamResultsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String subjectId});
}

/// @nodoc
class __$$FetchSubjectExamResultsImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$FetchSubjectExamResultsImpl>
    implements _$$FetchSubjectExamResultsImplCopyWith<$Res> {
  __$$FetchSubjectExamResultsImplCopyWithImpl(
      _$FetchSubjectExamResultsImpl _value,
      $Res Function(_$FetchSubjectExamResultsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectId = null,
  }) {
    return _then(_$FetchSubjectExamResultsImpl(
      null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchSubjectExamResultsImpl
    with DiagnosticableTreeMixin
    implements _FetchSubjectExamResults {
  const _$FetchSubjectExamResultsImpl(this.subjectId);

  @override
  final String subjectId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.fetchSubjectExamResults(subjectId: $subjectId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestEvent.fetchSubjectExamResults'))
      ..add(DiagnosticsProperty('subjectId', subjectId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSubjectExamResultsImpl &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subjectId);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSubjectExamResultsImplCopyWith<_$FetchSubjectExamResultsImpl>
      get copyWith => __$$FetchSubjectExamResultsImplCopyWithImpl<
          _$FetchSubjectExamResultsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchSubjectExamResults(subjectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchSubjectExamResults?.call(subjectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchSubjectExamResults != null) {
      return fetchSubjectExamResults(subjectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchSubjectExamResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchSubjectExamResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchSubjectExamResults != null) {
      return fetchSubjectExamResults(this);
    }
    return orElse();
  }
}

abstract class _FetchSubjectExamResults implements TestEvent {
  const factory _FetchSubjectExamResults(final String subjectId) =
      _$FetchSubjectExamResultsImpl;

  String get subjectId;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchSubjectExamResultsImplCopyWith<_$FetchSubjectExamResultsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchSubjectExamResultsSuccessfulImplCopyWith<$Res> {
  factory _$$FetchSubjectExamResultsSuccessfulImplCopyWith(
          _$FetchSubjectExamResultsSuccessfulImpl value,
          $Res Function(_$FetchSubjectExamResultsSuccessfulImpl) then) =
      __$$FetchSubjectExamResultsSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FetchSubjectExamResult fetchSubjectExamResult});
}

/// @nodoc
class __$$FetchSubjectExamResultsSuccessfulImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res,
        _$FetchSubjectExamResultsSuccessfulImpl>
    implements _$$FetchSubjectExamResultsSuccessfulImplCopyWith<$Res> {
  __$$FetchSubjectExamResultsSuccessfulImplCopyWithImpl(
      _$FetchSubjectExamResultsSuccessfulImpl _value,
      $Res Function(_$FetchSubjectExamResultsSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchSubjectExamResult = null,
  }) {
    return _then(_$FetchSubjectExamResultsSuccessfulImpl(
      null == fetchSubjectExamResult
          ? _value.fetchSubjectExamResult
          : fetchSubjectExamResult // ignore: cast_nullable_to_non_nullable
              as FetchSubjectExamResult,
    ));
  }
}

/// @nodoc

class _$FetchSubjectExamResultsSuccessfulImpl
    with DiagnosticableTreeMixin
    implements _FetchSubjectExamResultsSuccessful {
  const _$FetchSubjectExamResultsSuccessfulImpl(this.fetchSubjectExamResult);

  @override
  final FetchSubjectExamResult fetchSubjectExamResult;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.fetchSubjectExamResultsSuccessful(fetchSubjectExamResult: $fetchSubjectExamResult)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'TestEvent.fetchSubjectExamResultsSuccessful'))
      ..add(DiagnosticsProperty(
          'fetchSubjectExamResult', fetchSubjectExamResult));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSubjectExamResultsSuccessfulImpl &&
            (identical(other.fetchSubjectExamResult, fetchSubjectExamResult) ||
                other.fetchSubjectExamResult == fetchSubjectExamResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetchSubjectExamResult);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSubjectExamResultsSuccessfulImplCopyWith<
          _$FetchSubjectExamResultsSuccessfulImpl>
      get copyWith => __$$FetchSubjectExamResultsSuccessfulImplCopyWithImpl<
          _$FetchSubjectExamResultsSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchSubjectExamResultsSuccessful(fetchSubjectExamResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchSubjectExamResultsSuccessful?.call(fetchSubjectExamResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchSubjectExamResultsSuccessful != null) {
      return fetchSubjectExamResultsSuccessful(fetchSubjectExamResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchSubjectExamResultsSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchSubjectExamResultsSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchSubjectExamResultsSuccessful != null) {
      return fetchSubjectExamResultsSuccessful(this);
    }
    return orElse();
  }
}

abstract class _FetchSubjectExamResultsSuccessful implements TestEvent {
  const factory _FetchSubjectExamResultsSuccessful(
          final FetchSubjectExamResult fetchSubjectExamResult) =
      _$FetchSubjectExamResultsSuccessfulImpl;

  FetchSubjectExamResult get fetchSubjectExamResult;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchSubjectExamResultsSuccessfulImplCopyWith<
          _$FetchSubjectExamResultsSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchSubjectExamResultsFailedImplCopyWith<$Res> {
  factory _$$FetchSubjectExamResultsFailedImplCopyWith(
          _$FetchSubjectExamResultsFailedImpl value,
          $Res Function(_$FetchSubjectExamResultsFailedImpl) then) =
      __$$FetchSubjectExamResultsFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FetchSubjectExamResultsFailedImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$FetchSubjectExamResultsFailedImpl>
    implements _$$FetchSubjectExamResultsFailedImplCopyWith<$Res> {
  __$$FetchSubjectExamResultsFailedImplCopyWithImpl(
      _$FetchSubjectExamResultsFailedImpl _value,
      $Res Function(_$FetchSubjectExamResultsFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FetchSubjectExamResultsFailedImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchSubjectExamResultsFailedImpl
    with DiagnosticableTreeMixin
    implements _FetchSubjectExamResultsFailed {
  const _$FetchSubjectExamResultsFailedImpl(this.message);

  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.fetchSubjectExamResultsFailed(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'TestEvent.fetchSubjectExamResultsFailed'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSubjectExamResultsFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSubjectExamResultsFailedImplCopyWith<
          _$FetchSubjectExamResultsFailedImpl>
      get copyWith => __$$FetchSubjectExamResultsFailedImplCopyWithImpl<
          _$FetchSubjectExamResultsFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) {
    return fetchSubjectExamResultsFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) {
    return fetchSubjectExamResultsFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchSubjectExamResultsFailed != null) {
      return fetchSubjectExamResultsFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return fetchSubjectExamResultsFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return fetchSubjectExamResultsFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (fetchSubjectExamResultsFailed != null) {
      return fetchSubjectExamResultsFailed(this);
    }
    return orElse();
  }
}

abstract class _FetchSubjectExamResultsFailed implements TestEvent {
  const factory _FetchSubjectExamResultsFailed(final String? message) =
      _$FetchSubjectExamResultsFailedImpl;

  String? get message;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchSubjectExamResultsFailedImplCopyWith<
          _$FetchSubjectExamResultsFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavingRouteArgsImplCopyWith<$Res> {
  factory _$$SavingRouteArgsImplCopyWith(_$SavingRouteArgsImpl value,
          $Res Function(_$SavingRouteArgsImpl) then) =
      __$$SavingRouteArgsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String studentName,
      String className,
      String schoolName,
      String classId,
      String studentId,
      String subjectId});
}

/// @nodoc
class __$$SavingRouteArgsImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$SavingRouteArgsImpl>
    implements _$$SavingRouteArgsImplCopyWith<$Res> {
  __$$SavingRouteArgsImplCopyWithImpl(
      _$SavingRouteArgsImpl _value, $Res Function(_$SavingRouteArgsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentName = null,
    Object? className = null,
    Object? schoolName = null,
    Object? classId = null,
    Object? studentId = null,
    Object? subjectId = null,
  }) {
    return _then(_$SavingRouteArgsImpl(
      null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      null == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String,
      null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String,
      null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SavingRouteArgsImpl
    with DiagnosticableTreeMixin
    implements _SavingRouteArgs {
  const _$SavingRouteArgsImpl(this.studentName, this.className, this.schoolName,
      this.classId, this.studentId, this.subjectId);

  @override
  final String studentName;
  @override
  final String className;
  @override
  final String schoolName;
  @override
  final String classId;
  @override
  final String studentId;
  @override
  final String subjectId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.savingRouteArgs(studentName: $studentName, className: $className, schoolName: $schoolName, classId: $classId, studentId: $studentId, subjectId: $subjectId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestEvent.savingRouteArgs'))
      ..add(DiagnosticsProperty('studentName', studentName))
      ..add(DiagnosticsProperty('className', className))
      ..add(DiagnosticsProperty('schoolName', schoolName))
      ..add(DiagnosticsProperty('classId', classId))
      ..add(DiagnosticsProperty('studentId', studentId))
      ..add(DiagnosticsProperty('subjectId', subjectId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavingRouteArgsImpl &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.schoolName, schoolName) ||
                other.schoolName == schoolName) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studentName, className,
      schoolName, classId, studentId, subjectId);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SavingRouteArgsImplCopyWith<_$SavingRouteArgsImpl> get copyWith =>
      __$$SavingRouteArgsImplCopyWithImpl<_$SavingRouteArgsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) {
    return savingRouteArgs(
        studentName, className, schoolName, classId, studentId, subjectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) {
    return savingRouteArgs?.call(
        studentName, className, schoolName, classId, studentId, subjectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (savingRouteArgs != null) {
      return savingRouteArgs(
          studentName, className, schoolName, classId, studentId, subjectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return savingRouteArgs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return savingRouteArgs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (savingRouteArgs != null) {
      return savingRouteArgs(this);
    }
    return orElse();
  }
}

abstract class _SavingRouteArgs implements TestEvent {
  const factory _SavingRouteArgs(
      final String studentName,
      final String className,
      final String schoolName,
      final String classId,
      final String studentId,
      final String subjectId) = _$SavingRouteArgsImpl;

  String get studentName;
  String get className;
  String get schoolName;
  String get classId;
  String get studentId;
  String get subjectId;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SavingRouteArgsImplCopyWith<_$SavingRouteArgsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshImplCopyWith<$Res> {
  factory _$$RefreshImplCopyWith(
          _$RefreshImpl value, $Res Function(_$RefreshImpl) then) =
      __$$RefreshImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool value});
}

/// @nodoc
class __$$RefreshImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$RefreshImpl>
    implements _$$RefreshImplCopyWith<$Res> {
  __$$RefreshImplCopyWithImpl(
      _$RefreshImpl _value, $Res Function(_$RefreshImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$RefreshImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RefreshImpl with DiagnosticableTreeMixin implements _Refresh {
  const _$RefreshImpl(this.value);

  @override
  final bool value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.setNeedsRefresh(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestEvent.setNeedsRefresh'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshImplCopyWith<_$RefreshImpl> get copyWith =>
      __$$RefreshImplCopyWithImpl<_$RefreshImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) {
    return setNeedsRefresh(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) {
    return setNeedsRefresh?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (setNeedsRefresh != null) {
      return setNeedsRefresh(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return setNeedsRefresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return setNeedsRefresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (setNeedsRefresh != null) {
      return setNeedsRefresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements TestEvent {
  const factory _Refresh(final bool value) = _$RefreshImpl;

  bool get value;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshImplCopyWith<_$RefreshImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorMessageImplCopyWith<$Res> {
  factory _$$ErrorMessageImplCopyWith(
          _$ErrorMessageImpl value, $Res Function(_$ErrorMessageImpl) then) =
      __$$ErrorMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ErrorMessageImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$ErrorMessageImpl>
    implements _$$ErrorMessageImplCopyWith<$Res> {
  __$$ErrorMessageImplCopyWithImpl(
      _$ErrorMessageImpl _value, $Res Function(_$ErrorMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ErrorMessageImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorMessageImpl with DiagnosticableTreeMixin implements _ErrorMessage {
  const _$ErrorMessageImpl(this.message);

  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestEvent.errorMessage(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestEvent.errorMessage'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorMessageImplCopyWith<_$ErrorMessageImpl> get copyWith =>
      __$$ErrorMessageImplCopyWithImpl<_$ErrorMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String title) titleChanged,
    required TResult Function(double grade) gradeChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(TestResultRequest testResultRequest)
        addTestResult,
    required TResult Function(TestResponse result) addTestResultSuccessful,
    required TResult Function(String? message) addTestResultFailed,
    required TResult Function(TestResultRequest examResultRequest)
        addExamResult,
    required TResult Function(TestResponse examResultResponse)
        addExamResultSuccessful,
    required TResult Function(String? message) addExamResultFailed,
    required TResult Function(String? studentId, String? classId,
            String? subjectId, String? parentSchoolId)
        fetchTestResults,
    required TResult Function(FetchTestResponse fetchTestResponse)
        fetchTestResultsSuccessful,
    required TResult Function(String? message) fetchTestResultsFailed,
    required TResult Function(String studentId, String classId,
            String subjectId, String? parentSchoolId)
        fetchExamResults,
    required TResult Function(FetchExamResponse fetchExamResultResponse)
        fetchExamResultsSuccessful,
    required TResult Function(String? message) fetchExamResultsFailed,
    required TResult Function(String subjectId) fetchSubjectTestResults,
    required TResult Function(FetchSubjectTestResult fetchSubjectTestResult)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(String? message) fetchSubjectTestResultsFailed,
    required TResult Function(String subjectId) fetchSubjectExamResults,
    required TResult Function(FetchSubjectExamResult fetchSubjectExamResult)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(String? message) fetchSubjectExamResultsFailed,
    required TResult Function(
            String studentName,
            String className,
            String schoolName,
            String classId,
            String studentId,
            String subjectId)
        savingRouteArgs,
    required TResult Function(bool value) setNeedsRefresh,
    required TResult Function(String? message) errorMessage,
  }) {
    return errorMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String title)? titleChanged,
    TResult? Function(double grade)? gradeChanged,
    TResult? Function(String date)? dateChanged,
    TResult? Function(TestResultRequest testResultRequest)? addTestResult,
    TResult? Function(TestResponse result)? addTestResultSuccessful,
    TResult? Function(String? message)? addTestResultFailed,
    TResult? Function(TestResultRequest examResultRequest)? addExamResult,
    TResult? Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult? Function(String? message)? addExamResultFailed,
    TResult? Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult? Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult? Function(String? message)? fetchTestResultsFailed,
    TResult? Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult? Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult? Function(String? message)? fetchExamResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectTestResults,
    TResult? Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectTestResultsFailed,
    TResult? Function(String subjectId)? fetchSubjectExamResults,
    TResult? Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(String? message)? fetchSubjectExamResultsFailed,
    TResult? Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult? Function(bool value)? setNeedsRefresh,
    TResult? Function(String? message)? errorMessage,
  }) {
    return errorMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String title)? titleChanged,
    TResult Function(double grade)? gradeChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(TestResultRequest testResultRequest)? addTestResult,
    TResult Function(TestResponse result)? addTestResultSuccessful,
    TResult Function(String? message)? addTestResultFailed,
    TResult Function(TestResultRequest examResultRequest)? addExamResult,
    TResult Function(TestResponse examResultResponse)? addExamResultSuccessful,
    TResult Function(String? message)? addExamResultFailed,
    TResult Function(String? studentId, String? classId, String? subjectId,
            String? parentSchoolId)?
        fetchTestResults,
    TResult Function(FetchTestResponse fetchTestResponse)?
        fetchTestResultsSuccessful,
    TResult Function(String? message)? fetchTestResultsFailed,
    TResult Function(String studentId, String classId, String subjectId,
            String? parentSchoolId)?
        fetchExamResults,
    TResult Function(FetchExamResponse fetchExamResultResponse)?
        fetchExamResultsSuccessful,
    TResult Function(String? message)? fetchExamResultsFailed,
    TResult Function(String subjectId)? fetchSubjectTestResults,
    TResult Function(FetchSubjectTestResult fetchSubjectTestResult)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(String? message)? fetchSubjectTestResultsFailed,
    TResult Function(String subjectId)? fetchSubjectExamResults,
    TResult Function(FetchSubjectExamResult fetchSubjectExamResult)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(String? message)? fetchSubjectExamResultsFailed,
    TResult Function(String studentName, String className, String schoolName,
            String classId, String studentId, String subjectId)?
        savingRouteArgs,
    TResult Function(bool value)? setNeedsRefresh,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (errorMessage != null) {
      return errorMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestEvent value) $default, {
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_AddTestResult value) addTestResult,
    required TResult Function(_AddTestResultSuccessful value)
        addTestResultSuccessful,
    required TResult Function(_AddTestResultFailed value) addTestResultFailed,
    required TResult Function(_AddExamResult value) addExamResult,
    required TResult Function(_AddExamResultSuccessful value)
        addExamResultSuccessful,
    required TResult Function(_AddExamResultFailed value) addExamResultFailed,
    required TResult Function(_FetchTestResults value) fetchTestResults,
    required TResult Function(_FetchTestResultsSuccessful value)
        fetchTestResultsSuccessful,
    required TResult Function(_FetchTestResultsFailed value)
        fetchTestResultsFailed,
    required TResult Function(_FetchExamResults value) fetchExamResults,
    required TResult Function(_FetchExamResultsSuccessful value)
        fetchExamResultsSuccessful,
    required TResult Function(_FetchExamResultsFailed value)
        fetchExamResultsFailed,
    required TResult Function(_FetchSubjectTestResults value)
        fetchSubjectTestResults,
    required TResult Function(_FetchSubjectTestResultsSuccessful value)
        fetchSubjectTestResultsSuccessful,
    required TResult Function(_FetchSubjectTestResultsFailed value)
        fetchSubjectTestResultsFailed,
    required TResult Function(_FetchSubjectExamResults value)
        fetchSubjectExamResults,
    required TResult Function(_FetchSubjectExamResultsSuccessful value)
        fetchSubjectExamResultsSuccessful,
    required TResult Function(_FetchSubjectExamResultsFailed value)
        fetchSubjectExamResultsFailed,
    required TResult Function(_SavingRouteArgs value) savingRouteArgs,
    required TResult Function(_Refresh value) setNeedsRefresh,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return errorMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TestEvent value)? $default, {
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_GradeChanged value)? gradeChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_AddTestResult value)? addTestResult,
    TResult? Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult? Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult? Function(_AddExamResult value)? addExamResult,
    TResult? Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult? Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult? Function(_FetchTestResults value)? fetchTestResults,
    TResult? Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult? Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult? Function(_FetchExamResults value)? fetchExamResults,
    TResult? Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult? Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult? Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult? Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult? Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult? Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult? Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult? Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult? Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult? Function(_Refresh value)? setNeedsRefresh,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return errorMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestEvent value)? $default, {
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_AddTestResult value)? addTestResult,
    TResult Function(_AddTestResultSuccessful value)? addTestResultSuccessful,
    TResult Function(_AddTestResultFailed value)? addTestResultFailed,
    TResult Function(_AddExamResult value)? addExamResult,
    TResult Function(_AddExamResultSuccessful value)? addExamResultSuccessful,
    TResult Function(_AddExamResultFailed value)? addExamResultFailed,
    TResult Function(_FetchTestResults value)? fetchTestResults,
    TResult Function(_FetchTestResultsSuccessful value)?
        fetchTestResultsSuccessful,
    TResult Function(_FetchTestResultsFailed value)? fetchTestResultsFailed,
    TResult Function(_FetchExamResults value)? fetchExamResults,
    TResult Function(_FetchExamResultsSuccessful value)?
        fetchExamResultsSuccessful,
    TResult Function(_FetchExamResultsFailed value)? fetchExamResultsFailed,
    TResult Function(_FetchSubjectTestResults value)? fetchSubjectTestResults,
    TResult Function(_FetchSubjectTestResultsSuccessful value)?
        fetchSubjectTestResultsSuccessful,
    TResult Function(_FetchSubjectTestResultsFailed value)?
        fetchSubjectTestResultsFailed,
    TResult Function(_FetchSubjectExamResults value)? fetchSubjectExamResults,
    TResult Function(_FetchSubjectExamResultsSuccessful value)?
        fetchSubjectExamResultsSuccessful,
    TResult Function(_FetchSubjectExamResultsFailed value)?
        fetchSubjectExamResultsFailed,
    TResult Function(_SavingRouteArgs value)? savingRouteArgs,
    TResult Function(_Refresh value)? setNeedsRefresh,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (errorMessage != null) {
      return errorMessage(this);
    }
    return orElse();
  }
}

abstract class _ErrorMessage implements TestEvent {
  const factory _ErrorMessage(final String? message) = _$ErrorMessageImpl;

  String? get message;

  /// Create a copy of TestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorMessageImplCopyWith<_$ErrorMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TestState {
  FormzSubmissionStatus get addTestResultStatus =>
      throw _privateConstructorUsedError;
  TestTitleFormz get testTitle => throw _privateConstructorUsedError;
  TestResult? get testResultModel => throw _privateConstructorUsedError;
  String? get subjectId => throw _privateConstructorUsedError;
  String? get classId => throw _privateConstructorUsedError;
  String? get dateWritten => throw _privateConstructorUsedError;
  String? get studentId => throw _privateConstructorUsedError;
  String? get parentSchoolId => throw _privateConstructorUsedError;
  List<Grade>? get grades => throw _privateConstructorUsedError;
  double? get testGrade =>
      throw _privateConstructorUsedError; //==============================================================================
// ADD EXAM RESULTS
//==============================================================================
  FormzSubmissionStatus get addExamResultStatus =>
      throw _privateConstructorUsedError;
  ExamTitleFormz get examTitle =>
      throw _privateConstructorUsedError; //Using 'TestResult' cause the exam request format is same with test.
  TestResult? get examResultModel => throw _privateConstructorUsedError;
  String? get examId => throw _privateConstructorUsedError;
  String? get examDate => throw _privateConstructorUsedError;
  String? get examStudentId => throw _privateConstructorUsedError;
  String? get studentName => throw _privateConstructorUsedError;
  String? get className => throw _privateConstructorUsedError;
  String? get schoolName => throw _privateConstructorUsedError;
  List<Grade>? get examGrades => throw _privateConstructorUsedError;
  double? get examGrade =>
      throw _privateConstructorUsedError; //==============================================================================
// FETCH TEST RESULTS
//==============================================================================
  FormzSubmissionStatus get fetchTestResultsStatus =>
      throw _privateConstructorUsedError;
  FetchTestResponse? get fetchTestResponse =>
      throw _privateConstructorUsedError;
  List<FetchTestResponseDatum>? get fetchTestResultsData =>
      throw _privateConstructorUsedError;
  List<FetchTestResponseGrade>? get fetchTestResultsGrades =>
      throw _privateConstructorUsedError; //==============================================================================
// FETCH EXAM RESULTS
//==============================================================================
  FormzSubmissionStatus get fetchExamResultsStatus =>
      throw _privateConstructorUsedError;
  FetchExamResponse? get fetchExamResponse =>
      throw _privateConstructorUsedError;
  List<FetchExamResponseDatum>? get fetchExamResultsData =>
      throw _privateConstructorUsedError;
  List<FetchExamResponseGrade>? get fetchExamResultsGrades =>
      throw _privateConstructorUsedError; //==============================================================================
// FETCH SUBJECT TEST RESULTS
//==============================================================================
  FormzSubmissionStatus get fetchSubjectTestResultsStatus =>
      throw _privateConstructorUsedError;
  FetchSubjectTestResult? get fetchSubjectTestResult =>
      throw _privateConstructorUsedError;
  List<FetchSubjectTestResultDatum>? get fetchSubjectTestResultsData =>
      throw _privateConstructorUsedError; //==============================================================================
// FETCH SUBJECT EXAM RESULTS
//==============================================================================
  FormzSubmissionStatus get fetchSubjectExamResultsStatus =>
      throw _privateConstructorUsedError;
  FetchSubjectExamResult? get fetchSubjectExamResult =>
      throw _privateConstructorUsedError;
  List<FetchSubjectExamResultDatum>? get fetchSubjectExamResultsData =>
      throw _privateConstructorUsedError;
  bool get refresh => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of TestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TestStateCopyWith<TestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestStateCopyWith<$Res> {
  factory $TestStateCopyWith(TestState value, $Res Function(TestState) then) =
      _$TestStateCopyWithImpl<$Res, TestState>;
  @useResult
  $Res call(
      {FormzSubmissionStatus addTestResultStatus,
      TestTitleFormz testTitle,
      TestResult? testResultModel,
      String? subjectId,
      String? classId,
      String? dateWritten,
      String? studentId,
      String? parentSchoolId,
      List<Grade>? grades,
      double? testGrade,
      FormzSubmissionStatus addExamResultStatus,
      ExamTitleFormz examTitle,
      TestResult? examResultModel,
      String? examId,
      String? examDate,
      String? examStudentId,
      String? studentName,
      String? className,
      String? schoolName,
      List<Grade>? examGrades,
      double? examGrade,
      FormzSubmissionStatus fetchTestResultsStatus,
      FetchTestResponse? fetchTestResponse,
      List<FetchTestResponseDatum>? fetchTestResultsData,
      List<FetchTestResponseGrade>? fetchTestResultsGrades,
      FormzSubmissionStatus fetchExamResultsStatus,
      FetchExamResponse? fetchExamResponse,
      List<FetchExamResponseDatum>? fetchExamResultsData,
      List<FetchExamResponseGrade>? fetchExamResultsGrades,
      FormzSubmissionStatus fetchSubjectTestResultsStatus,
      FetchSubjectTestResult? fetchSubjectTestResult,
      List<FetchSubjectTestResultDatum>? fetchSubjectTestResultsData,
      FormzSubmissionStatus fetchSubjectExamResultsStatus,
      FetchSubjectExamResult? fetchSubjectExamResult,
      List<FetchSubjectExamResultDatum>? fetchSubjectExamResultsData,
      bool refresh,
      String? errorMessage});
}

/// @nodoc
class _$TestStateCopyWithImpl<$Res, $Val extends TestState>
    implements $TestStateCopyWith<$Res> {
  _$TestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addTestResultStatus = null,
    Object? testTitle = null,
    Object? testResultModel = freezed,
    Object? subjectId = freezed,
    Object? classId = freezed,
    Object? dateWritten = freezed,
    Object? studentId = freezed,
    Object? parentSchoolId = freezed,
    Object? grades = freezed,
    Object? testGrade = freezed,
    Object? addExamResultStatus = null,
    Object? examTitle = null,
    Object? examResultModel = freezed,
    Object? examId = freezed,
    Object? examDate = freezed,
    Object? examStudentId = freezed,
    Object? studentName = freezed,
    Object? className = freezed,
    Object? schoolName = freezed,
    Object? examGrades = freezed,
    Object? examGrade = freezed,
    Object? fetchTestResultsStatus = null,
    Object? fetchTestResponse = freezed,
    Object? fetchTestResultsData = freezed,
    Object? fetchTestResultsGrades = freezed,
    Object? fetchExamResultsStatus = null,
    Object? fetchExamResponse = freezed,
    Object? fetchExamResultsData = freezed,
    Object? fetchExamResultsGrades = freezed,
    Object? fetchSubjectTestResultsStatus = null,
    Object? fetchSubjectTestResult = freezed,
    Object? fetchSubjectTestResultsData = freezed,
    Object? fetchSubjectExamResultsStatus = null,
    Object? fetchSubjectExamResult = freezed,
    Object? fetchSubjectExamResultsData = freezed,
    Object? refresh = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      addTestResultStatus: null == addTestResultStatus
          ? _value.addTestResultStatus
          : addTestResultStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      testTitle: null == testTitle
          ? _value.testTitle
          : testTitle // ignore: cast_nullable_to_non_nullable
              as TestTitleFormz,
      testResultModel: freezed == testResultModel
          ? _value.testResultModel
          : testResultModel // ignore: cast_nullable_to_non_nullable
              as TestResult?,
      subjectId: freezed == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateWritten: freezed == dateWritten
          ? _value.dateWritten
          : dateWritten // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      parentSchoolId: freezed == parentSchoolId
          ? _value.parentSchoolId
          : parentSchoolId // ignore: cast_nullable_to_non_nullable
              as String?,
      grades: freezed == grades
          ? _value.grades
          : grades // ignore: cast_nullable_to_non_nullable
              as List<Grade>?,
      testGrade: freezed == testGrade
          ? _value.testGrade
          : testGrade // ignore: cast_nullable_to_non_nullable
              as double?,
      addExamResultStatus: null == addExamResultStatus
          ? _value.addExamResultStatus
          : addExamResultStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      examTitle: null == examTitle
          ? _value.examTitle
          : examTitle // ignore: cast_nullable_to_non_nullable
              as ExamTitleFormz,
      examResultModel: freezed == examResultModel
          ? _value.examResultModel
          : examResultModel // ignore: cast_nullable_to_non_nullable
              as TestResult?,
      examId: freezed == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as String?,
      examDate: freezed == examDate
          ? _value.examDate
          : examDate // ignore: cast_nullable_to_non_nullable
              as String?,
      examStudentId: freezed == examStudentId
          ? _value.examStudentId
          : examStudentId // ignore: cast_nullable_to_non_nullable
              as String?,
      studentName: freezed == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolName: freezed == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String?,
      examGrades: freezed == examGrades
          ? _value.examGrades
          : examGrades // ignore: cast_nullable_to_non_nullable
              as List<Grade>?,
      examGrade: freezed == examGrade
          ? _value.examGrade
          : examGrade // ignore: cast_nullable_to_non_nullable
              as double?,
      fetchTestResultsStatus: null == fetchTestResultsStatus
          ? _value.fetchTestResultsStatus
          : fetchTestResultsStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      fetchTestResponse: freezed == fetchTestResponse
          ? _value.fetchTestResponse
          : fetchTestResponse // ignore: cast_nullable_to_non_nullable
              as FetchTestResponse?,
      fetchTestResultsData: freezed == fetchTestResultsData
          ? _value.fetchTestResultsData
          : fetchTestResultsData // ignore: cast_nullable_to_non_nullable
              as List<FetchTestResponseDatum>?,
      fetchTestResultsGrades: freezed == fetchTestResultsGrades
          ? _value.fetchTestResultsGrades
          : fetchTestResultsGrades // ignore: cast_nullable_to_non_nullable
              as List<FetchTestResponseGrade>?,
      fetchExamResultsStatus: null == fetchExamResultsStatus
          ? _value.fetchExamResultsStatus
          : fetchExamResultsStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      fetchExamResponse: freezed == fetchExamResponse
          ? _value.fetchExamResponse
          : fetchExamResponse // ignore: cast_nullable_to_non_nullable
              as FetchExamResponse?,
      fetchExamResultsData: freezed == fetchExamResultsData
          ? _value.fetchExamResultsData
          : fetchExamResultsData // ignore: cast_nullable_to_non_nullable
              as List<FetchExamResponseDatum>?,
      fetchExamResultsGrades: freezed == fetchExamResultsGrades
          ? _value.fetchExamResultsGrades
          : fetchExamResultsGrades // ignore: cast_nullable_to_non_nullable
              as List<FetchExamResponseGrade>?,
      fetchSubjectTestResultsStatus: null == fetchSubjectTestResultsStatus
          ? _value.fetchSubjectTestResultsStatus
          : fetchSubjectTestResultsStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      fetchSubjectTestResult: freezed == fetchSubjectTestResult
          ? _value.fetchSubjectTestResult
          : fetchSubjectTestResult // ignore: cast_nullable_to_non_nullable
              as FetchSubjectTestResult?,
      fetchSubjectTestResultsData: freezed == fetchSubjectTestResultsData
          ? _value.fetchSubjectTestResultsData
          : fetchSubjectTestResultsData // ignore: cast_nullable_to_non_nullable
              as List<FetchSubjectTestResultDatum>?,
      fetchSubjectExamResultsStatus: null == fetchSubjectExamResultsStatus
          ? _value.fetchSubjectExamResultsStatus
          : fetchSubjectExamResultsStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      fetchSubjectExamResult: freezed == fetchSubjectExamResult
          ? _value.fetchSubjectExamResult
          : fetchSubjectExamResult // ignore: cast_nullable_to_non_nullable
              as FetchSubjectExamResult?,
      fetchSubjectExamResultsData: freezed == fetchSubjectExamResultsData
          ? _value.fetchSubjectExamResultsData
          : fetchSubjectExamResultsData // ignore: cast_nullable_to_non_nullable
              as List<FetchSubjectExamResultDatum>?,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestStateImplCopyWith<$Res>
    implements $TestStateCopyWith<$Res> {
  factory _$$TestStateImplCopyWith(
          _$TestStateImpl value, $Res Function(_$TestStateImpl) then) =
      __$$TestStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzSubmissionStatus addTestResultStatus,
      TestTitleFormz testTitle,
      TestResult? testResultModel,
      String? subjectId,
      String? classId,
      String? dateWritten,
      String? studentId,
      String? parentSchoolId,
      List<Grade>? grades,
      double? testGrade,
      FormzSubmissionStatus addExamResultStatus,
      ExamTitleFormz examTitle,
      TestResult? examResultModel,
      String? examId,
      String? examDate,
      String? examStudentId,
      String? studentName,
      String? className,
      String? schoolName,
      List<Grade>? examGrades,
      double? examGrade,
      FormzSubmissionStatus fetchTestResultsStatus,
      FetchTestResponse? fetchTestResponse,
      List<FetchTestResponseDatum>? fetchTestResultsData,
      List<FetchTestResponseGrade>? fetchTestResultsGrades,
      FormzSubmissionStatus fetchExamResultsStatus,
      FetchExamResponse? fetchExamResponse,
      List<FetchExamResponseDatum>? fetchExamResultsData,
      List<FetchExamResponseGrade>? fetchExamResultsGrades,
      FormzSubmissionStatus fetchSubjectTestResultsStatus,
      FetchSubjectTestResult? fetchSubjectTestResult,
      List<FetchSubjectTestResultDatum>? fetchSubjectTestResultsData,
      FormzSubmissionStatus fetchSubjectExamResultsStatus,
      FetchSubjectExamResult? fetchSubjectExamResult,
      List<FetchSubjectExamResultDatum>? fetchSubjectExamResultsData,
      bool refresh,
      String? errorMessage});
}

/// @nodoc
class __$$TestStateImplCopyWithImpl<$Res>
    extends _$TestStateCopyWithImpl<$Res, _$TestStateImpl>
    implements _$$TestStateImplCopyWith<$Res> {
  __$$TestStateImplCopyWithImpl(
      _$TestStateImpl _value, $Res Function(_$TestStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addTestResultStatus = null,
    Object? testTitle = null,
    Object? testResultModel = freezed,
    Object? subjectId = freezed,
    Object? classId = freezed,
    Object? dateWritten = freezed,
    Object? studentId = freezed,
    Object? parentSchoolId = freezed,
    Object? grades = freezed,
    Object? testGrade = freezed,
    Object? addExamResultStatus = null,
    Object? examTitle = null,
    Object? examResultModel = freezed,
    Object? examId = freezed,
    Object? examDate = freezed,
    Object? examStudentId = freezed,
    Object? studentName = freezed,
    Object? className = freezed,
    Object? schoolName = freezed,
    Object? examGrades = freezed,
    Object? examGrade = freezed,
    Object? fetchTestResultsStatus = null,
    Object? fetchTestResponse = freezed,
    Object? fetchTestResultsData = freezed,
    Object? fetchTestResultsGrades = freezed,
    Object? fetchExamResultsStatus = null,
    Object? fetchExamResponse = freezed,
    Object? fetchExamResultsData = freezed,
    Object? fetchExamResultsGrades = freezed,
    Object? fetchSubjectTestResultsStatus = null,
    Object? fetchSubjectTestResult = freezed,
    Object? fetchSubjectTestResultsData = freezed,
    Object? fetchSubjectExamResultsStatus = null,
    Object? fetchSubjectExamResult = freezed,
    Object? fetchSubjectExamResultsData = freezed,
    Object? refresh = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$TestStateImpl(
      addTestResultStatus: null == addTestResultStatus
          ? _value.addTestResultStatus
          : addTestResultStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      testTitle: null == testTitle
          ? _value.testTitle
          : testTitle // ignore: cast_nullable_to_non_nullable
              as TestTitleFormz,
      testResultModel: freezed == testResultModel
          ? _value.testResultModel
          : testResultModel // ignore: cast_nullable_to_non_nullable
              as TestResult?,
      subjectId: freezed == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as String?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as String?,
      dateWritten: freezed == dateWritten
          ? _value.dateWritten
          : dateWritten // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      parentSchoolId: freezed == parentSchoolId
          ? _value.parentSchoolId
          : parentSchoolId // ignore: cast_nullable_to_non_nullable
              as String?,
      grades: freezed == grades
          ? _value._grades
          : grades // ignore: cast_nullable_to_non_nullable
              as List<Grade>?,
      testGrade: freezed == testGrade
          ? _value.testGrade
          : testGrade // ignore: cast_nullable_to_non_nullable
              as double?,
      addExamResultStatus: null == addExamResultStatus
          ? _value.addExamResultStatus
          : addExamResultStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      examTitle: null == examTitle
          ? _value.examTitle
          : examTitle // ignore: cast_nullable_to_non_nullable
              as ExamTitleFormz,
      examResultModel: freezed == examResultModel
          ? _value.examResultModel
          : examResultModel // ignore: cast_nullable_to_non_nullable
              as TestResult?,
      examId: freezed == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as String?,
      examDate: freezed == examDate
          ? _value.examDate
          : examDate // ignore: cast_nullable_to_non_nullable
              as String?,
      examStudentId: freezed == examStudentId
          ? _value.examStudentId
          : examStudentId // ignore: cast_nullable_to_non_nullable
              as String?,
      studentName: freezed == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolName: freezed == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String?,
      examGrades: freezed == examGrades
          ? _value._examGrades
          : examGrades // ignore: cast_nullable_to_non_nullable
              as List<Grade>?,
      examGrade: freezed == examGrade
          ? _value.examGrade
          : examGrade // ignore: cast_nullable_to_non_nullable
              as double?,
      fetchTestResultsStatus: null == fetchTestResultsStatus
          ? _value.fetchTestResultsStatus
          : fetchTestResultsStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      fetchTestResponse: freezed == fetchTestResponse
          ? _value.fetchTestResponse
          : fetchTestResponse // ignore: cast_nullable_to_non_nullable
              as FetchTestResponse?,
      fetchTestResultsData: freezed == fetchTestResultsData
          ? _value._fetchTestResultsData
          : fetchTestResultsData // ignore: cast_nullable_to_non_nullable
              as List<FetchTestResponseDatum>?,
      fetchTestResultsGrades: freezed == fetchTestResultsGrades
          ? _value._fetchTestResultsGrades
          : fetchTestResultsGrades // ignore: cast_nullable_to_non_nullable
              as List<FetchTestResponseGrade>?,
      fetchExamResultsStatus: null == fetchExamResultsStatus
          ? _value.fetchExamResultsStatus
          : fetchExamResultsStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      fetchExamResponse: freezed == fetchExamResponse
          ? _value.fetchExamResponse
          : fetchExamResponse // ignore: cast_nullable_to_non_nullable
              as FetchExamResponse?,
      fetchExamResultsData: freezed == fetchExamResultsData
          ? _value._fetchExamResultsData
          : fetchExamResultsData // ignore: cast_nullable_to_non_nullable
              as List<FetchExamResponseDatum>?,
      fetchExamResultsGrades: freezed == fetchExamResultsGrades
          ? _value._fetchExamResultsGrades
          : fetchExamResultsGrades // ignore: cast_nullable_to_non_nullable
              as List<FetchExamResponseGrade>?,
      fetchSubjectTestResultsStatus: null == fetchSubjectTestResultsStatus
          ? _value.fetchSubjectTestResultsStatus
          : fetchSubjectTestResultsStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      fetchSubjectTestResult: freezed == fetchSubjectTestResult
          ? _value.fetchSubjectTestResult
          : fetchSubjectTestResult // ignore: cast_nullable_to_non_nullable
              as FetchSubjectTestResult?,
      fetchSubjectTestResultsData: freezed == fetchSubjectTestResultsData
          ? _value._fetchSubjectTestResultsData
          : fetchSubjectTestResultsData // ignore: cast_nullable_to_non_nullable
              as List<FetchSubjectTestResultDatum>?,
      fetchSubjectExamResultsStatus: null == fetchSubjectExamResultsStatus
          ? _value.fetchSubjectExamResultsStatus
          : fetchSubjectExamResultsStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      fetchSubjectExamResult: freezed == fetchSubjectExamResult
          ? _value.fetchSubjectExamResult
          : fetchSubjectExamResult // ignore: cast_nullable_to_non_nullable
              as FetchSubjectExamResult?,
      fetchSubjectExamResultsData: freezed == fetchSubjectExamResultsData
          ? _value._fetchSubjectExamResultsData
          : fetchSubjectExamResultsData // ignore: cast_nullable_to_non_nullable
              as List<FetchSubjectExamResultDatum>?,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TestStateImpl with DiagnosticableTreeMixin implements _TestState {
  const _$TestStateImpl(
      {this.addTestResultStatus = FormzSubmissionStatus.initial,
      this.testTitle = const TestTitleFormz.pure(),
      this.testResultModel,
      this.subjectId,
      this.classId,
      this.dateWritten,
      this.studentId,
      this.parentSchoolId,
      final List<Grade>? grades,
      this.testGrade,
      this.addExamResultStatus = FormzSubmissionStatus.initial,
      this.examTitle = const ExamTitleFormz.pure(),
      this.examResultModel,
      this.examId,
      this.examDate,
      this.examStudentId,
      this.studentName,
      this.className,
      this.schoolName,
      final List<Grade>? examGrades,
      this.examGrade,
      this.fetchTestResultsStatus = FormzSubmissionStatus.initial,
      this.fetchTestResponse,
      final List<FetchTestResponseDatum>? fetchTestResultsData,
      final List<FetchTestResponseGrade>? fetchTestResultsGrades,
      this.fetchExamResultsStatus = FormzSubmissionStatus.initial,
      this.fetchExamResponse,
      final List<FetchExamResponseDatum>? fetchExamResultsData,
      final List<FetchExamResponseGrade>? fetchExamResultsGrades,
      this.fetchSubjectTestResultsStatus = FormzSubmissionStatus.initial,
      this.fetchSubjectTestResult,
      final List<FetchSubjectTestResultDatum>? fetchSubjectTestResultsData,
      this.fetchSubjectExamResultsStatus = FormzSubmissionStatus.initial,
      this.fetchSubjectExamResult,
      final List<FetchSubjectExamResultDatum>? fetchSubjectExamResultsData,
      this.refresh = false,
      this.errorMessage})
      : _grades = grades,
        _examGrades = examGrades,
        _fetchTestResultsData = fetchTestResultsData,
        _fetchTestResultsGrades = fetchTestResultsGrades,
        _fetchExamResultsData = fetchExamResultsData,
        _fetchExamResultsGrades = fetchExamResultsGrades,
        _fetchSubjectTestResultsData = fetchSubjectTestResultsData,
        _fetchSubjectExamResultsData = fetchSubjectExamResultsData;

  @override
  @JsonKey()
  final FormzSubmissionStatus addTestResultStatus;
  @override
  @JsonKey()
  final TestTitleFormz testTitle;
  @override
  final TestResult? testResultModel;
  @override
  final String? subjectId;
  @override
  final String? classId;
  @override
  final String? dateWritten;
  @override
  final String? studentId;
  @override
  final String? parentSchoolId;
  final List<Grade>? _grades;
  @override
  List<Grade>? get grades {
    final value = _grades;
    if (value == null) return null;
    if (_grades is EqualUnmodifiableListView) return _grades;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? testGrade;
//==============================================================================
// ADD EXAM RESULTS
//==============================================================================
  @override
  @JsonKey()
  final FormzSubmissionStatus addExamResultStatus;
  @override
  @JsonKey()
  final ExamTitleFormz examTitle;
//Using 'TestResult' cause the exam request format is same with test.
  @override
  final TestResult? examResultModel;
  @override
  final String? examId;
  @override
  final String? examDate;
  @override
  final String? examStudentId;
  @override
  final String? studentName;
  @override
  final String? className;
  @override
  final String? schoolName;
  final List<Grade>? _examGrades;
  @override
  List<Grade>? get examGrades {
    final value = _examGrades;
    if (value == null) return null;
    if (_examGrades is EqualUnmodifiableListView) return _examGrades;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? examGrade;
//==============================================================================
// FETCH TEST RESULTS
//==============================================================================
  @override
  @JsonKey()
  final FormzSubmissionStatus fetchTestResultsStatus;
  @override
  final FetchTestResponse? fetchTestResponse;
  final List<FetchTestResponseDatum>? _fetchTestResultsData;
  @override
  List<FetchTestResponseDatum>? get fetchTestResultsData {
    final value = _fetchTestResultsData;
    if (value == null) return null;
    if (_fetchTestResultsData is EqualUnmodifiableListView)
      return _fetchTestResultsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FetchTestResponseGrade>? _fetchTestResultsGrades;
  @override
  List<FetchTestResponseGrade>? get fetchTestResultsGrades {
    final value = _fetchTestResultsGrades;
    if (value == null) return null;
    if (_fetchTestResultsGrades is EqualUnmodifiableListView)
      return _fetchTestResultsGrades;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

//==============================================================================
// FETCH EXAM RESULTS
//==============================================================================
  @override
  @JsonKey()
  final FormzSubmissionStatus fetchExamResultsStatus;
  @override
  final FetchExamResponse? fetchExamResponse;
  final List<FetchExamResponseDatum>? _fetchExamResultsData;
  @override
  List<FetchExamResponseDatum>? get fetchExamResultsData {
    final value = _fetchExamResultsData;
    if (value == null) return null;
    if (_fetchExamResultsData is EqualUnmodifiableListView)
      return _fetchExamResultsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FetchExamResponseGrade>? _fetchExamResultsGrades;
  @override
  List<FetchExamResponseGrade>? get fetchExamResultsGrades {
    final value = _fetchExamResultsGrades;
    if (value == null) return null;
    if (_fetchExamResultsGrades is EqualUnmodifiableListView)
      return _fetchExamResultsGrades;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

//==============================================================================
// FETCH SUBJECT TEST RESULTS
//==============================================================================
  @override
  @JsonKey()
  final FormzSubmissionStatus fetchSubjectTestResultsStatus;
  @override
  final FetchSubjectTestResult? fetchSubjectTestResult;
  final List<FetchSubjectTestResultDatum>? _fetchSubjectTestResultsData;
  @override
  List<FetchSubjectTestResultDatum>? get fetchSubjectTestResultsData {
    final value = _fetchSubjectTestResultsData;
    if (value == null) return null;
    if (_fetchSubjectTestResultsData is EqualUnmodifiableListView)
      return _fetchSubjectTestResultsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

//==============================================================================
// FETCH SUBJECT EXAM RESULTS
//==============================================================================
  @override
  @JsonKey()
  final FormzSubmissionStatus fetchSubjectExamResultsStatus;
  @override
  final FetchSubjectExamResult? fetchSubjectExamResult;
  final List<FetchSubjectExamResultDatum>? _fetchSubjectExamResultsData;
  @override
  List<FetchSubjectExamResultDatum>? get fetchSubjectExamResultsData {
    final value = _fetchSubjectExamResultsData;
    if (value == null) return null;
    if (_fetchSubjectExamResultsData is EqualUnmodifiableListView)
      return _fetchSubjectExamResultsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool refresh;
  @override
  final String? errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestState(addTestResultStatus: $addTestResultStatus, testTitle: $testTitle, testResultModel: $testResultModel, subjectId: $subjectId, classId: $classId, dateWritten: $dateWritten, studentId: $studentId, parentSchoolId: $parentSchoolId, grades: $grades, testGrade: $testGrade, addExamResultStatus: $addExamResultStatus, examTitle: $examTitle, examResultModel: $examResultModel, examId: $examId, examDate: $examDate, examStudentId: $examStudentId, studentName: $studentName, className: $className, schoolName: $schoolName, examGrades: $examGrades, examGrade: $examGrade, fetchTestResultsStatus: $fetchTestResultsStatus, fetchTestResponse: $fetchTestResponse, fetchTestResultsData: $fetchTestResultsData, fetchTestResultsGrades: $fetchTestResultsGrades, fetchExamResultsStatus: $fetchExamResultsStatus, fetchExamResponse: $fetchExamResponse, fetchExamResultsData: $fetchExamResultsData, fetchExamResultsGrades: $fetchExamResultsGrades, fetchSubjectTestResultsStatus: $fetchSubjectTestResultsStatus, fetchSubjectTestResult: $fetchSubjectTestResult, fetchSubjectTestResultsData: $fetchSubjectTestResultsData, fetchSubjectExamResultsStatus: $fetchSubjectExamResultsStatus, fetchSubjectExamResult: $fetchSubjectExamResult, fetchSubjectExamResultsData: $fetchSubjectExamResultsData, refresh: $refresh, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestState'))
      ..add(DiagnosticsProperty('addTestResultStatus', addTestResultStatus))
      ..add(DiagnosticsProperty('testTitle', testTitle))
      ..add(DiagnosticsProperty('testResultModel', testResultModel))
      ..add(DiagnosticsProperty('subjectId', subjectId))
      ..add(DiagnosticsProperty('classId', classId))
      ..add(DiagnosticsProperty('dateWritten', dateWritten))
      ..add(DiagnosticsProperty('studentId', studentId))
      ..add(DiagnosticsProperty('parentSchoolId', parentSchoolId))
      ..add(DiagnosticsProperty('grades', grades))
      ..add(DiagnosticsProperty('testGrade', testGrade))
      ..add(DiagnosticsProperty('addExamResultStatus', addExamResultStatus))
      ..add(DiagnosticsProperty('examTitle', examTitle))
      ..add(DiagnosticsProperty('examResultModel', examResultModel))
      ..add(DiagnosticsProperty('examId', examId))
      ..add(DiagnosticsProperty('examDate', examDate))
      ..add(DiagnosticsProperty('examStudentId', examStudentId))
      ..add(DiagnosticsProperty('studentName', studentName))
      ..add(DiagnosticsProperty('className', className))
      ..add(DiagnosticsProperty('schoolName', schoolName))
      ..add(DiagnosticsProperty('examGrades', examGrades))
      ..add(DiagnosticsProperty('examGrade', examGrade))
      ..add(
          DiagnosticsProperty('fetchTestResultsStatus', fetchTestResultsStatus))
      ..add(DiagnosticsProperty('fetchTestResponse', fetchTestResponse))
      ..add(DiagnosticsProperty('fetchTestResultsData', fetchTestResultsData))
      ..add(
          DiagnosticsProperty('fetchTestResultsGrades', fetchTestResultsGrades))
      ..add(
          DiagnosticsProperty('fetchExamResultsStatus', fetchExamResultsStatus))
      ..add(DiagnosticsProperty('fetchExamResponse', fetchExamResponse))
      ..add(DiagnosticsProperty('fetchExamResultsData', fetchExamResultsData))
      ..add(
          DiagnosticsProperty('fetchExamResultsGrades', fetchExamResultsGrades))
      ..add(DiagnosticsProperty(
          'fetchSubjectTestResultsStatus', fetchSubjectTestResultsStatus))
      ..add(
          DiagnosticsProperty('fetchSubjectTestResult', fetchSubjectTestResult))
      ..add(DiagnosticsProperty(
          'fetchSubjectTestResultsData', fetchSubjectTestResultsData))
      ..add(DiagnosticsProperty(
          'fetchSubjectExamResultsStatus', fetchSubjectExamResultsStatus))
      ..add(
          DiagnosticsProperty('fetchSubjectExamResult', fetchSubjectExamResult))
      ..add(DiagnosticsProperty(
          'fetchSubjectExamResultsData', fetchSubjectExamResultsData))
      ..add(DiagnosticsProperty('refresh', refresh))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestStateImpl &&
            (identical(other.addTestResultStatus, addTestResultStatus) ||
                other.addTestResultStatus == addTestResultStatus) &&
            (identical(other.testTitle, testTitle) ||
                other.testTitle == testTitle) &&
            (identical(other.testResultModel, testResultModel) ||
                other.testResultModel == testResultModel) &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.dateWritten, dateWritten) ||
                other.dateWritten == dateWritten) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.parentSchoolId, parentSchoolId) ||
                other.parentSchoolId == parentSchoolId) &&
            const DeepCollectionEquality().equals(other._grades, _grades) &&
            (identical(other.testGrade, testGrade) ||
                other.testGrade == testGrade) &&
            (identical(other.addExamResultStatus, addExamResultStatus) ||
                other.addExamResultStatus == addExamResultStatus) &&
            (identical(other.examTitle, examTitle) ||
                other.examTitle == examTitle) &&
            (identical(other.examResultModel, examResultModel) ||
                other.examResultModel == examResultModel) &&
            (identical(other.examId, examId) || other.examId == examId) &&
            (identical(other.examDate, examDate) ||
                other.examDate == examDate) &&
            (identical(other.examStudentId, examStudentId) ||
                other.examStudentId == examStudentId) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.schoolName, schoolName) ||
                other.schoolName == schoolName) &&
            const DeepCollectionEquality()
                .equals(other._examGrades, _examGrades) &&
            (identical(other.examGrade, examGrade) ||
                other.examGrade == examGrade) &&
            (identical(other.fetchTestResultsStatus, fetchTestResultsStatus) ||
                other.fetchTestResultsStatus == fetchTestResultsStatus) &&
            (identical(other.fetchTestResponse, fetchTestResponse) ||
                other.fetchTestResponse == fetchTestResponse) &&
            const DeepCollectionEquality()
                .equals(other._fetchTestResultsData, _fetchTestResultsData) &&
            const DeepCollectionEquality().equals(
                other._fetchTestResultsGrades, _fetchTestResultsGrades) &&
            (identical(other.fetchExamResultsStatus, fetchExamResultsStatus) ||
                other.fetchExamResultsStatus == fetchExamResultsStatus) &&
            (identical(other.fetchExamResponse, fetchExamResponse) ||
                other.fetchExamResponse == fetchExamResponse) &&
            const DeepCollectionEquality()
                .equals(other._fetchExamResultsData, _fetchExamResultsData) &&
            const DeepCollectionEquality().equals(
                other._fetchExamResultsGrades, _fetchExamResultsGrades) &&
            (identical(other.fetchSubjectTestResultsStatus, fetchSubjectTestResultsStatus) ||
                other.fetchSubjectTestResultsStatus ==
                    fetchSubjectTestResultsStatus) &&
            (identical(other.fetchSubjectTestResult, fetchSubjectTestResult) ||
                other.fetchSubjectTestResult == fetchSubjectTestResult) &&
            const DeepCollectionEquality().equals(
                other._fetchSubjectTestResultsData,
                _fetchSubjectTestResultsData) &&
            (identical(other.fetchSubjectExamResultsStatus,
                    fetchSubjectExamResultsStatus) ||
                other.fetchSubjectExamResultsStatus ==
                    fetchSubjectExamResultsStatus) &&
            (identical(other.fetchSubjectExamResult, fetchSubjectExamResult) ||
                other.fetchSubjectExamResult == fetchSubjectExamResult) &&
            const DeepCollectionEquality().equals(
                other._fetchSubjectExamResultsData,
                _fetchSubjectExamResultsData) &&
            (identical(other.refresh, refresh) || other.refresh == refresh) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        addTestResultStatus,
        testTitle,
        testResultModel,
        subjectId,
        classId,
        dateWritten,
        studentId,
        parentSchoolId,
        const DeepCollectionEquality().hash(_grades),
        testGrade,
        addExamResultStatus,
        examTitle,
        examResultModel,
        examId,
        examDate,
        examStudentId,
        studentName,
        className,
        schoolName,
        const DeepCollectionEquality().hash(_examGrades),
        examGrade,
        fetchTestResultsStatus,
        fetchTestResponse,
        const DeepCollectionEquality().hash(_fetchTestResultsData),
        const DeepCollectionEquality().hash(_fetchTestResultsGrades),
        fetchExamResultsStatus,
        fetchExamResponse,
        const DeepCollectionEquality().hash(_fetchExamResultsData),
        const DeepCollectionEquality().hash(_fetchExamResultsGrades),
        fetchSubjectTestResultsStatus,
        fetchSubjectTestResult,
        const DeepCollectionEquality().hash(_fetchSubjectTestResultsData),
        fetchSubjectExamResultsStatus,
        fetchSubjectExamResult,
        const DeepCollectionEquality().hash(_fetchSubjectExamResultsData),
        refresh,
        errorMessage
      ]);

  /// Create a copy of TestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TestStateImplCopyWith<_$TestStateImpl> get copyWith =>
      __$$TestStateImplCopyWithImpl<_$TestStateImpl>(this, _$identity);
}

abstract class _TestState implements TestState {
  const factory _TestState(
      {final FormzSubmissionStatus addTestResultStatus,
      final TestTitleFormz testTitle,
      final TestResult? testResultModel,
      final String? subjectId,
      final String? classId,
      final String? dateWritten,
      final String? studentId,
      final String? parentSchoolId,
      final List<Grade>? grades,
      final double? testGrade,
      final FormzSubmissionStatus addExamResultStatus,
      final ExamTitleFormz examTitle,
      final TestResult? examResultModel,
      final String? examId,
      final String? examDate,
      final String? examStudentId,
      final String? studentName,
      final String? className,
      final String? schoolName,
      final List<Grade>? examGrades,
      final double? examGrade,
      final FormzSubmissionStatus fetchTestResultsStatus,
      final FetchTestResponse? fetchTestResponse,
      final List<FetchTestResponseDatum>? fetchTestResultsData,
      final List<FetchTestResponseGrade>? fetchTestResultsGrades,
      final FormzSubmissionStatus fetchExamResultsStatus,
      final FetchExamResponse? fetchExamResponse,
      final List<FetchExamResponseDatum>? fetchExamResultsData,
      final List<FetchExamResponseGrade>? fetchExamResultsGrades,
      final FormzSubmissionStatus fetchSubjectTestResultsStatus,
      final FetchSubjectTestResult? fetchSubjectTestResult,
      final List<FetchSubjectTestResultDatum>? fetchSubjectTestResultsData,
      final FormzSubmissionStatus fetchSubjectExamResultsStatus,
      final FetchSubjectExamResult? fetchSubjectExamResult,
      final List<FetchSubjectExamResultDatum>? fetchSubjectExamResultsData,
      final bool refresh,
      final String? errorMessage}) = _$TestStateImpl;

  @override
  FormzSubmissionStatus get addTestResultStatus;
  @override
  TestTitleFormz get testTitle;
  @override
  TestResult? get testResultModel;
  @override
  String? get subjectId;
  @override
  String? get classId;
  @override
  String? get dateWritten;
  @override
  String? get studentId;
  @override
  String? get parentSchoolId;
  @override
  List<Grade>? get grades;
  @override
  double?
      get testGrade; //==============================================================================
// ADD EXAM RESULTS
//==============================================================================
  @override
  FormzSubmissionStatus get addExamResultStatus;
  @override
  ExamTitleFormz
      get examTitle; //Using 'TestResult' cause the exam request format is same with test.
  @override
  TestResult? get examResultModel;
  @override
  String? get examId;
  @override
  String? get examDate;
  @override
  String? get examStudentId;
  @override
  String? get studentName;
  @override
  String? get className;
  @override
  String? get schoolName;
  @override
  List<Grade>? get examGrades;
  @override
  double?
      get examGrade; //==============================================================================
// FETCH TEST RESULTS
//==============================================================================
  @override
  FormzSubmissionStatus get fetchTestResultsStatus;
  @override
  FetchTestResponse? get fetchTestResponse;
  @override
  List<FetchTestResponseDatum>? get fetchTestResultsData;
  @override
  List<FetchTestResponseGrade>?
      get fetchTestResultsGrades; //==============================================================================
// FETCH EXAM RESULTS
//==============================================================================
  @override
  FormzSubmissionStatus get fetchExamResultsStatus;
  @override
  FetchExamResponse? get fetchExamResponse;
  @override
  List<FetchExamResponseDatum>? get fetchExamResultsData;
  @override
  List<FetchExamResponseGrade>?
      get fetchExamResultsGrades; //==============================================================================
// FETCH SUBJECT TEST RESULTS
//==============================================================================
  @override
  FormzSubmissionStatus get fetchSubjectTestResultsStatus;
  @override
  FetchSubjectTestResult? get fetchSubjectTestResult;
  @override
  List<FetchSubjectTestResultDatum>?
      get fetchSubjectTestResultsData; //==============================================================================
// FETCH SUBJECT EXAM RESULTS
//==============================================================================
  @override
  FormzSubmissionStatus get fetchSubjectExamResultsStatus;
  @override
  FetchSubjectExamResult? get fetchSubjectExamResult;
  @override
  List<FetchSubjectExamResultDatum>? get fetchSubjectExamResultsData;
  @override
  bool get refresh;
  @override
  String? get errorMessage;

  /// Create a copy of TestState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TestStateImplCopyWith<_$TestStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
