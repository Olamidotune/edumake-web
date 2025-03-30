// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_subjects_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddSubjectsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Subject> subjects) submitSubjects,
    required TResult Function() submitSubjectSuccessFul,
    required TResult Function(String? message) submitSubjectFailed,
    required TResult Function(String subject, int index) onSubjectFieldChanged,
    required TResult Function(String note, int index) onNoteFieldChanged,
    required TResult Function(PlatformFile file) submitSubjectCSV,
    required TResult Function() pickAndUploadCsv,
    required TResult Function(dynamic hasSaved) submitSubjectCSVSuccessful,
    required TResult Function(String? message) submitSubjectCSVFailed,
    required TResult Function(String? message) errorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<Subject> subjects)? submitSubjects,
    TResult? Function()? submitSubjectSuccessFul,
    TResult? Function(String? message)? submitSubjectFailed,
    TResult? Function(String subject, int index)? onSubjectFieldChanged,
    TResult? Function(String note, int index)? onNoteFieldChanged,
    TResult? Function(PlatformFile file)? submitSubjectCSV,
    TResult? Function()? pickAndUploadCsv,
    TResult? Function(dynamic hasSaved)? submitSubjectCSVSuccessful,
    TResult? Function(String? message)? submitSubjectCSVFailed,
    TResult? Function(String? message)? errorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Subject> subjects)? submitSubjects,
    TResult Function()? submitSubjectSuccessFul,
    TResult Function(String? message)? submitSubjectFailed,
    TResult Function(String subject, int index)? onSubjectFieldChanged,
    TResult Function(String note, int index)? onNoteFieldChanged,
    TResult Function(PlatformFile file)? submitSubjectCSV,
    TResult Function()? pickAndUploadCsv,
    TResult Function(dynamic hasSaved)? submitSubjectCSVSuccessful,
    TResult Function(String? message)? submitSubjectCSVFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubmitSubjects value) submitSubjects,
    required TResult Function(_SubmitSubjectSuccessful value)
        submitSubjectSuccessFul,
    required TResult Function(_SubmitSubjectFailed value) submitSubjectFailed,
    required TResult Function(_OnSubjectFieldChanged value)
        onSubjectFieldChanged,
    required TResult Function(_OnNoteFieldChanged value) onNoteFieldChanged,
    required TResult Function(_SubmitSubjectCSV value) submitSubjectCSV,
    required TResult Function(_PickAndUploadCsv value) pickAndUploadCsv,
    required TResult Function(_SubmitSubjectCSVSuccessful value)
        submitSubjectCSVSuccessful,
    required TResult Function(_SubmitSubjectCSVFailed value)
        submitSubjectCSVFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubmitSubjects value)? submitSubjects,
    TResult? Function(_SubmitSubjectSuccessful value)? submitSubjectSuccessFul,
    TResult? Function(_SubmitSubjectFailed value)? submitSubjectFailed,
    TResult? Function(_OnSubjectFieldChanged value)? onSubjectFieldChanged,
    TResult? Function(_OnNoteFieldChanged value)? onNoteFieldChanged,
    TResult? Function(_SubmitSubjectCSV value)? submitSubjectCSV,
    TResult? Function(_PickAndUploadCsv value)? pickAndUploadCsv,
    TResult? Function(_SubmitSubjectCSVSuccessful value)?
        submitSubjectCSVSuccessful,
    TResult? Function(_SubmitSubjectCSVFailed value)? submitSubjectCSVFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubmitSubjects value)? submitSubjects,
    TResult Function(_SubmitSubjectSuccessful value)? submitSubjectSuccessFul,
    TResult Function(_SubmitSubjectFailed value)? submitSubjectFailed,
    TResult Function(_OnSubjectFieldChanged value)? onSubjectFieldChanged,
    TResult Function(_OnNoteFieldChanged value)? onNoteFieldChanged,
    TResult Function(_SubmitSubjectCSV value)? submitSubjectCSV,
    TResult Function(_PickAndUploadCsv value)? pickAndUploadCsv,
    TResult Function(_SubmitSubjectCSVSuccessful value)?
        submitSubjectCSVSuccessful,
    TResult Function(_SubmitSubjectCSVFailed value)? submitSubjectCSVFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddSubjectsEventCopyWith<$Res> {
  factory $AddSubjectsEventCopyWith(
          AddSubjectsEvent value, $Res Function(AddSubjectsEvent) then) =
      _$AddSubjectsEventCopyWithImpl<$Res, AddSubjectsEvent>;
}

/// @nodoc
class _$AddSubjectsEventCopyWithImpl<$Res, $Val extends AddSubjectsEvent>
    implements $AddSubjectsEventCopyWith<$Res> {
  _$AddSubjectsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AddSubjectsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddSubjectsEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AddSubjectsEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Subject> subjects) submitSubjects,
    required TResult Function() submitSubjectSuccessFul,
    required TResult Function(String? message) submitSubjectFailed,
    required TResult Function(String subject, int index) onSubjectFieldChanged,
    required TResult Function(String note, int index) onNoteFieldChanged,
    required TResult Function(PlatformFile file) submitSubjectCSV,
    required TResult Function() pickAndUploadCsv,
    required TResult Function(dynamic hasSaved) submitSubjectCSVSuccessful,
    required TResult Function(String? message) submitSubjectCSVFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<Subject> subjects)? submitSubjects,
    TResult? Function()? submitSubjectSuccessFul,
    TResult? Function(String? message)? submitSubjectFailed,
    TResult? Function(String subject, int index)? onSubjectFieldChanged,
    TResult? Function(String note, int index)? onNoteFieldChanged,
    TResult? Function(PlatformFile file)? submitSubjectCSV,
    TResult? Function()? pickAndUploadCsv,
    TResult? Function(dynamic hasSaved)? submitSubjectCSVSuccessful,
    TResult? Function(String? message)? submitSubjectCSVFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Subject> subjects)? submitSubjects,
    TResult Function()? submitSubjectSuccessFul,
    TResult Function(String? message)? submitSubjectFailed,
    TResult Function(String subject, int index)? onSubjectFieldChanged,
    TResult Function(String note, int index)? onNoteFieldChanged,
    TResult Function(PlatformFile file)? submitSubjectCSV,
    TResult Function()? pickAndUploadCsv,
    TResult Function(dynamic hasSaved)? submitSubjectCSVSuccessful,
    TResult Function(String? message)? submitSubjectCSVFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubmitSubjects value) submitSubjects,
    required TResult Function(_SubmitSubjectSuccessful value)
        submitSubjectSuccessFul,
    required TResult Function(_SubmitSubjectFailed value) submitSubjectFailed,
    required TResult Function(_OnSubjectFieldChanged value)
        onSubjectFieldChanged,
    required TResult Function(_OnNoteFieldChanged value) onNoteFieldChanged,
    required TResult Function(_SubmitSubjectCSV value) submitSubjectCSV,
    required TResult Function(_PickAndUploadCsv value) pickAndUploadCsv,
    required TResult Function(_SubmitSubjectCSVSuccessful value)
        submitSubjectCSVSuccessful,
    required TResult Function(_SubmitSubjectCSVFailed value)
        submitSubjectCSVFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubmitSubjects value)? submitSubjects,
    TResult? Function(_SubmitSubjectSuccessful value)? submitSubjectSuccessFul,
    TResult? Function(_SubmitSubjectFailed value)? submitSubjectFailed,
    TResult? Function(_OnSubjectFieldChanged value)? onSubjectFieldChanged,
    TResult? Function(_OnNoteFieldChanged value)? onNoteFieldChanged,
    TResult? Function(_SubmitSubjectCSV value)? submitSubjectCSV,
    TResult? Function(_PickAndUploadCsv value)? pickAndUploadCsv,
    TResult? Function(_SubmitSubjectCSVSuccessful value)?
        submitSubjectCSVSuccessful,
    TResult? Function(_SubmitSubjectCSVFailed value)? submitSubjectCSVFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubmitSubjects value)? submitSubjects,
    TResult Function(_SubmitSubjectSuccessful value)? submitSubjectSuccessFul,
    TResult Function(_SubmitSubjectFailed value)? submitSubjectFailed,
    TResult Function(_OnSubjectFieldChanged value)? onSubjectFieldChanged,
    TResult Function(_OnNoteFieldChanged value)? onNoteFieldChanged,
    TResult Function(_SubmitSubjectCSV value)? submitSubjectCSV,
    TResult Function(_PickAndUploadCsv value)? pickAndUploadCsv,
    TResult Function(_SubmitSubjectCSVSuccessful value)?
        submitSubjectCSVSuccessful,
    TResult Function(_SubmitSubjectCSVFailed value)? submitSubjectCSVFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AddSubjectsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SubmitSubjectsImplCopyWith<$Res> {
  factory _$$SubmitSubjectsImplCopyWith(_$SubmitSubjectsImpl value,
          $Res Function(_$SubmitSubjectsImpl) then) =
      __$$SubmitSubjectsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Subject> subjects});
}

/// @nodoc
class __$$SubmitSubjectsImplCopyWithImpl<$Res>
    extends _$AddSubjectsEventCopyWithImpl<$Res, _$SubmitSubjectsImpl>
    implements _$$SubmitSubjectsImplCopyWith<$Res> {
  __$$SubmitSubjectsImplCopyWithImpl(
      _$SubmitSubjectsImpl _value, $Res Function(_$SubmitSubjectsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjects = null,
  }) {
    return _then(_$SubmitSubjectsImpl(
      null == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<Subject>,
    ));
  }
}

/// @nodoc

class _$SubmitSubjectsImpl
    with DiagnosticableTreeMixin
    implements _SubmitSubjects {
  const _$SubmitSubjectsImpl(final List<Subject> subjects)
      : _subjects = subjects;

  final List<Subject> _subjects;
  @override
  List<Subject> get subjects {
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subjects);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddSubjectsEvent.submitSubjects(subjects: $subjects)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddSubjectsEvent.submitSubjects'))
      ..add(DiagnosticsProperty('subjects', subjects));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitSubjectsImpl &&
            const DeepCollectionEquality().equals(other._subjects, _subjects));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_subjects));

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitSubjectsImplCopyWith<_$SubmitSubjectsImpl> get copyWith =>
      __$$SubmitSubjectsImplCopyWithImpl<_$SubmitSubjectsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Subject> subjects) submitSubjects,
    required TResult Function() submitSubjectSuccessFul,
    required TResult Function(String? message) submitSubjectFailed,
    required TResult Function(String subject, int index) onSubjectFieldChanged,
    required TResult Function(String note, int index) onNoteFieldChanged,
    required TResult Function(PlatformFile file) submitSubjectCSV,
    required TResult Function() pickAndUploadCsv,
    required TResult Function(dynamic hasSaved) submitSubjectCSVSuccessful,
    required TResult Function(String? message) submitSubjectCSVFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return submitSubjects(subjects);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<Subject> subjects)? submitSubjects,
    TResult? Function()? submitSubjectSuccessFul,
    TResult? Function(String? message)? submitSubjectFailed,
    TResult? Function(String subject, int index)? onSubjectFieldChanged,
    TResult? Function(String note, int index)? onNoteFieldChanged,
    TResult? Function(PlatformFile file)? submitSubjectCSV,
    TResult? Function()? pickAndUploadCsv,
    TResult? Function(dynamic hasSaved)? submitSubjectCSVSuccessful,
    TResult? Function(String? message)? submitSubjectCSVFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return submitSubjects?.call(subjects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Subject> subjects)? submitSubjects,
    TResult Function()? submitSubjectSuccessFul,
    TResult Function(String? message)? submitSubjectFailed,
    TResult Function(String subject, int index)? onSubjectFieldChanged,
    TResult Function(String note, int index)? onNoteFieldChanged,
    TResult Function(PlatformFile file)? submitSubjectCSV,
    TResult Function()? pickAndUploadCsv,
    TResult Function(dynamic hasSaved)? submitSubjectCSVSuccessful,
    TResult Function(String? message)? submitSubjectCSVFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (submitSubjects != null) {
      return submitSubjects(subjects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubmitSubjects value) submitSubjects,
    required TResult Function(_SubmitSubjectSuccessful value)
        submitSubjectSuccessFul,
    required TResult Function(_SubmitSubjectFailed value) submitSubjectFailed,
    required TResult Function(_OnSubjectFieldChanged value)
        onSubjectFieldChanged,
    required TResult Function(_OnNoteFieldChanged value) onNoteFieldChanged,
    required TResult Function(_SubmitSubjectCSV value) submitSubjectCSV,
    required TResult Function(_PickAndUploadCsv value) pickAndUploadCsv,
    required TResult Function(_SubmitSubjectCSVSuccessful value)
        submitSubjectCSVSuccessful,
    required TResult Function(_SubmitSubjectCSVFailed value)
        submitSubjectCSVFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return submitSubjects(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubmitSubjects value)? submitSubjects,
    TResult? Function(_SubmitSubjectSuccessful value)? submitSubjectSuccessFul,
    TResult? Function(_SubmitSubjectFailed value)? submitSubjectFailed,
    TResult? Function(_OnSubjectFieldChanged value)? onSubjectFieldChanged,
    TResult? Function(_OnNoteFieldChanged value)? onNoteFieldChanged,
    TResult? Function(_SubmitSubjectCSV value)? submitSubjectCSV,
    TResult? Function(_PickAndUploadCsv value)? pickAndUploadCsv,
    TResult? Function(_SubmitSubjectCSVSuccessful value)?
        submitSubjectCSVSuccessful,
    TResult? Function(_SubmitSubjectCSVFailed value)? submitSubjectCSVFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return submitSubjects?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubmitSubjects value)? submitSubjects,
    TResult Function(_SubmitSubjectSuccessful value)? submitSubjectSuccessFul,
    TResult Function(_SubmitSubjectFailed value)? submitSubjectFailed,
    TResult Function(_OnSubjectFieldChanged value)? onSubjectFieldChanged,
    TResult Function(_OnNoteFieldChanged value)? onNoteFieldChanged,
    TResult Function(_SubmitSubjectCSV value)? submitSubjectCSV,
    TResult Function(_PickAndUploadCsv value)? pickAndUploadCsv,
    TResult Function(_SubmitSubjectCSVSuccessful value)?
        submitSubjectCSVSuccessful,
    TResult Function(_SubmitSubjectCSVFailed value)? submitSubjectCSVFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (submitSubjects != null) {
      return submitSubjects(this);
    }
    return orElse();
  }
}

abstract class _SubmitSubjects implements AddSubjectsEvent {
  const factory _SubmitSubjects(final List<Subject> subjects) =
      _$SubmitSubjectsImpl;

  List<Subject> get subjects;

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitSubjectsImplCopyWith<_$SubmitSubjectsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitSubjectSuccessfulImplCopyWith<$Res> {
  factory _$$SubmitSubjectSuccessfulImplCopyWith(
          _$SubmitSubjectSuccessfulImpl value,
          $Res Function(_$SubmitSubjectSuccessfulImpl) then) =
      __$$SubmitSubjectSuccessfulImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitSubjectSuccessfulImplCopyWithImpl<$Res>
    extends _$AddSubjectsEventCopyWithImpl<$Res, _$SubmitSubjectSuccessfulImpl>
    implements _$$SubmitSubjectSuccessfulImplCopyWith<$Res> {
  __$$SubmitSubjectSuccessfulImplCopyWithImpl(
      _$SubmitSubjectSuccessfulImpl _value,
      $Res Function(_$SubmitSubjectSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitSubjectSuccessfulImpl
    with DiagnosticableTreeMixin
    implements _SubmitSubjectSuccessful {
  const _$SubmitSubjectSuccessfulImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddSubjectsEvent.submitSubjectSuccessFul()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'AddSubjectsEvent.submitSubjectSuccessFul'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitSubjectSuccessfulImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Subject> subjects) submitSubjects,
    required TResult Function() submitSubjectSuccessFul,
    required TResult Function(String? message) submitSubjectFailed,
    required TResult Function(String subject, int index) onSubjectFieldChanged,
    required TResult Function(String note, int index) onNoteFieldChanged,
    required TResult Function(PlatformFile file) submitSubjectCSV,
    required TResult Function() pickAndUploadCsv,
    required TResult Function(dynamic hasSaved) submitSubjectCSVSuccessful,
    required TResult Function(String? message) submitSubjectCSVFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return submitSubjectSuccessFul();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<Subject> subjects)? submitSubjects,
    TResult? Function()? submitSubjectSuccessFul,
    TResult? Function(String? message)? submitSubjectFailed,
    TResult? Function(String subject, int index)? onSubjectFieldChanged,
    TResult? Function(String note, int index)? onNoteFieldChanged,
    TResult? Function(PlatformFile file)? submitSubjectCSV,
    TResult? Function()? pickAndUploadCsv,
    TResult? Function(dynamic hasSaved)? submitSubjectCSVSuccessful,
    TResult? Function(String? message)? submitSubjectCSVFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return submitSubjectSuccessFul?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Subject> subjects)? submitSubjects,
    TResult Function()? submitSubjectSuccessFul,
    TResult Function(String? message)? submitSubjectFailed,
    TResult Function(String subject, int index)? onSubjectFieldChanged,
    TResult Function(String note, int index)? onNoteFieldChanged,
    TResult Function(PlatformFile file)? submitSubjectCSV,
    TResult Function()? pickAndUploadCsv,
    TResult Function(dynamic hasSaved)? submitSubjectCSVSuccessful,
    TResult Function(String? message)? submitSubjectCSVFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (submitSubjectSuccessFul != null) {
      return submitSubjectSuccessFul();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubmitSubjects value) submitSubjects,
    required TResult Function(_SubmitSubjectSuccessful value)
        submitSubjectSuccessFul,
    required TResult Function(_SubmitSubjectFailed value) submitSubjectFailed,
    required TResult Function(_OnSubjectFieldChanged value)
        onSubjectFieldChanged,
    required TResult Function(_OnNoteFieldChanged value) onNoteFieldChanged,
    required TResult Function(_SubmitSubjectCSV value) submitSubjectCSV,
    required TResult Function(_PickAndUploadCsv value) pickAndUploadCsv,
    required TResult Function(_SubmitSubjectCSVSuccessful value)
        submitSubjectCSVSuccessful,
    required TResult Function(_SubmitSubjectCSVFailed value)
        submitSubjectCSVFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return submitSubjectSuccessFul(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubmitSubjects value)? submitSubjects,
    TResult? Function(_SubmitSubjectSuccessful value)? submitSubjectSuccessFul,
    TResult? Function(_SubmitSubjectFailed value)? submitSubjectFailed,
    TResult? Function(_OnSubjectFieldChanged value)? onSubjectFieldChanged,
    TResult? Function(_OnNoteFieldChanged value)? onNoteFieldChanged,
    TResult? Function(_SubmitSubjectCSV value)? submitSubjectCSV,
    TResult? Function(_PickAndUploadCsv value)? pickAndUploadCsv,
    TResult? Function(_SubmitSubjectCSVSuccessful value)?
        submitSubjectCSVSuccessful,
    TResult? Function(_SubmitSubjectCSVFailed value)? submitSubjectCSVFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return submitSubjectSuccessFul?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubmitSubjects value)? submitSubjects,
    TResult Function(_SubmitSubjectSuccessful value)? submitSubjectSuccessFul,
    TResult Function(_SubmitSubjectFailed value)? submitSubjectFailed,
    TResult Function(_OnSubjectFieldChanged value)? onSubjectFieldChanged,
    TResult Function(_OnNoteFieldChanged value)? onNoteFieldChanged,
    TResult Function(_SubmitSubjectCSV value)? submitSubjectCSV,
    TResult Function(_PickAndUploadCsv value)? pickAndUploadCsv,
    TResult Function(_SubmitSubjectCSVSuccessful value)?
        submitSubjectCSVSuccessful,
    TResult Function(_SubmitSubjectCSVFailed value)? submitSubjectCSVFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (submitSubjectSuccessFul != null) {
      return submitSubjectSuccessFul(this);
    }
    return orElse();
  }
}

abstract class _SubmitSubjectSuccessful implements AddSubjectsEvent {
  const factory _SubmitSubjectSuccessful() = _$SubmitSubjectSuccessfulImpl;
}

/// @nodoc
abstract class _$$SubmitSubjectFailedImplCopyWith<$Res> {
  factory _$$SubmitSubjectFailedImplCopyWith(_$SubmitSubjectFailedImpl value,
          $Res Function(_$SubmitSubjectFailedImpl) then) =
      __$$SubmitSubjectFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$SubmitSubjectFailedImplCopyWithImpl<$Res>
    extends _$AddSubjectsEventCopyWithImpl<$Res, _$SubmitSubjectFailedImpl>
    implements _$$SubmitSubjectFailedImplCopyWith<$Res> {
  __$$SubmitSubjectFailedImplCopyWithImpl(_$SubmitSubjectFailedImpl _value,
      $Res Function(_$SubmitSubjectFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SubmitSubjectFailedImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SubmitSubjectFailedImpl
    with DiagnosticableTreeMixin
    implements _SubmitSubjectFailed {
  const _$SubmitSubjectFailedImpl(this.message);

  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddSubjectsEvent.submitSubjectFailed(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddSubjectsEvent.submitSubjectFailed'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitSubjectFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitSubjectFailedImplCopyWith<_$SubmitSubjectFailedImpl> get copyWith =>
      __$$SubmitSubjectFailedImplCopyWithImpl<_$SubmitSubjectFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Subject> subjects) submitSubjects,
    required TResult Function() submitSubjectSuccessFul,
    required TResult Function(String? message) submitSubjectFailed,
    required TResult Function(String subject, int index) onSubjectFieldChanged,
    required TResult Function(String note, int index) onNoteFieldChanged,
    required TResult Function(PlatformFile file) submitSubjectCSV,
    required TResult Function() pickAndUploadCsv,
    required TResult Function(dynamic hasSaved) submitSubjectCSVSuccessful,
    required TResult Function(String? message) submitSubjectCSVFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return submitSubjectFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<Subject> subjects)? submitSubjects,
    TResult? Function()? submitSubjectSuccessFul,
    TResult? Function(String? message)? submitSubjectFailed,
    TResult? Function(String subject, int index)? onSubjectFieldChanged,
    TResult? Function(String note, int index)? onNoteFieldChanged,
    TResult? Function(PlatformFile file)? submitSubjectCSV,
    TResult? Function()? pickAndUploadCsv,
    TResult? Function(dynamic hasSaved)? submitSubjectCSVSuccessful,
    TResult? Function(String? message)? submitSubjectCSVFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return submitSubjectFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Subject> subjects)? submitSubjects,
    TResult Function()? submitSubjectSuccessFul,
    TResult Function(String? message)? submitSubjectFailed,
    TResult Function(String subject, int index)? onSubjectFieldChanged,
    TResult Function(String note, int index)? onNoteFieldChanged,
    TResult Function(PlatformFile file)? submitSubjectCSV,
    TResult Function()? pickAndUploadCsv,
    TResult Function(dynamic hasSaved)? submitSubjectCSVSuccessful,
    TResult Function(String? message)? submitSubjectCSVFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (submitSubjectFailed != null) {
      return submitSubjectFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubmitSubjects value) submitSubjects,
    required TResult Function(_SubmitSubjectSuccessful value)
        submitSubjectSuccessFul,
    required TResult Function(_SubmitSubjectFailed value) submitSubjectFailed,
    required TResult Function(_OnSubjectFieldChanged value)
        onSubjectFieldChanged,
    required TResult Function(_OnNoteFieldChanged value) onNoteFieldChanged,
    required TResult Function(_SubmitSubjectCSV value) submitSubjectCSV,
    required TResult Function(_PickAndUploadCsv value) pickAndUploadCsv,
    required TResult Function(_SubmitSubjectCSVSuccessful value)
        submitSubjectCSVSuccessful,
    required TResult Function(_SubmitSubjectCSVFailed value)
        submitSubjectCSVFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return submitSubjectFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubmitSubjects value)? submitSubjects,
    TResult? Function(_SubmitSubjectSuccessful value)? submitSubjectSuccessFul,
    TResult? Function(_SubmitSubjectFailed value)? submitSubjectFailed,
    TResult? Function(_OnSubjectFieldChanged value)? onSubjectFieldChanged,
    TResult? Function(_OnNoteFieldChanged value)? onNoteFieldChanged,
    TResult? Function(_SubmitSubjectCSV value)? submitSubjectCSV,
    TResult? Function(_PickAndUploadCsv value)? pickAndUploadCsv,
    TResult? Function(_SubmitSubjectCSVSuccessful value)?
        submitSubjectCSVSuccessful,
    TResult? Function(_SubmitSubjectCSVFailed value)? submitSubjectCSVFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return submitSubjectFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubmitSubjects value)? submitSubjects,
    TResult Function(_SubmitSubjectSuccessful value)? submitSubjectSuccessFul,
    TResult Function(_SubmitSubjectFailed value)? submitSubjectFailed,
    TResult Function(_OnSubjectFieldChanged value)? onSubjectFieldChanged,
    TResult Function(_OnNoteFieldChanged value)? onNoteFieldChanged,
    TResult Function(_SubmitSubjectCSV value)? submitSubjectCSV,
    TResult Function(_PickAndUploadCsv value)? pickAndUploadCsv,
    TResult Function(_SubmitSubjectCSVSuccessful value)?
        submitSubjectCSVSuccessful,
    TResult Function(_SubmitSubjectCSVFailed value)? submitSubjectCSVFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (submitSubjectFailed != null) {
      return submitSubjectFailed(this);
    }
    return orElse();
  }
}

abstract class _SubmitSubjectFailed implements AddSubjectsEvent {
  const factory _SubmitSubjectFailed(final String? message) =
      _$SubmitSubjectFailedImpl;

  String? get message;

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitSubjectFailedImplCopyWith<_$SubmitSubjectFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSubjectFieldChangedImplCopyWith<$Res> {
  factory _$$OnSubjectFieldChangedImplCopyWith(
          _$OnSubjectFieldChangedImpl value,
          $Res Function(_$OnSubjectFieldChangedImpl) then) =
      __$$OnSubjectFieldChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String subject, int index});
}

/// @nodoc
class __$$OnSubjectFieldChangedImplCopyWithImpl<$Res>
    extends _$AddSubjectsEventCopyWithImpl<$Res, _$OnSubjectFieldChangedImpl>
    implements _$$OnSubjectFieldChangedImplCopyWith<$Res> {
  __$$OnSubjectFieldChangedImplCopyWithImpl(_$OnSubjectFieldChangedImpl _value,
      $Res Function(_$OnSubjectFieldChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? index = null,
  }) {
    return _then(_$OnSubjectFieldChangedImpl(
      null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnSubjectFieldChangedImpl
    with DiagnosticableTreeMixin
    implements _OnSubjectFieldChanged {
  const _$OnSubjectFieldChangedImpl(this.subject, this.index);

  @override
  final String subject;
  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddSubjectsEvent.onSubjectFieldChanged(subject: $subject, index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AddSubjectsEvent.onSubjectFieldChanged'))
      ..add(DiagnosticsProperty('subject', subject))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSubjectFieldChangedImpl &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subject, index);

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSubjectFieldChangedImplCopyWith<_$OnSubjectFieldChangedImpl>
      get copyWith => __$$OnSubjectFieldChangedImplCopyWithImpl<
          _$OnSubjectFieldChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Subject> subjects) submitSubjects,
    required TResult Function() submitSubjectSuccessFul,
    required TResult Function(String? message) submitSubjectFailed,
    required TResult Function(String subject, int index) onSubjectFieldChanged,
    required TResult Function(String note, int index) onNoteFieldChanged,
    required TResult Function(PlatformFile file) submitSubjectCSV,
    required TResult Function() pickAndUploadCsv,
    required TResult Function(dynamic hasSaved) submitSubjectCSVSuccessful,
    required TResult Function(String? message) submitSubjectCSVFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return onSubjectFieldChanged(subject, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<Subject> subjects)? submitSubjects,
    TResult? Function()? submitSubjectSuccessFul,
    TResult? Function(String? message)? submitSubjectFailed,
    TResult? Function(String subject, int index)? onSubjectFieldChanged,
    TResult? Function(String note, int index)? onNoteFieldChanged,
    TResult? Function(PlatformFile file)? submitSubjectCSV,
    TResult? Function()? pickAndUploadCsv,
    TResult? Function(dynamic hasSaved)? submitSubjectCSVSuccessful,
    TResult? Function(String? message)? submitSubjectCSVFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return onSubjectFieldChanged?.call(subject, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Subject> subjects)? submitSubjects,
    TResult Function()? submitSubjectSuccessFul,
    TResult Function(String? message)? submitSubjectFailed,
    TResult Function(String subject, int index)? onSubjectFieldChanged,
    TResult Function(String note, int index)? onNoteFieldChanged,
    TResult Function(PlatformFile file)? submitSubjectCSV,
    TResult Function()? pickAndUploadCsv,
    TResult Function(dynamic hasSaved)? submitSubjectCSVSuccessful,
    TResult Function(String? message)? submitSubjectCSVFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (onSubjectFieldChanged != null) {
      return onSubjectFieldChanged(subject, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubmitSubjects value) submitSubjects,
    required TResult Function(_SubmitSubjectSuccessful value)
        submitSubjectSuccessFul,
    required TResult Function(_SubmitSubjectFailed value) submitSubjectFailed,
    required TResult Function(_OnSubjectFieldChanged value)
        onSubjectFieldChanged,
    required TResult Function(_OnNoteFieldChanged value) onNoteFieldChanged,
    required TResult Function(_SubmitSubjectCSV value) submitSubjectCSV,
    required TResult Function(_PickAndUploadCsv value) pickAndUploadCsv,
    required TResult Function(_SubmitSubjectCSVSuccessful value)
        submitSubjectCSVSuccessful,
    required TResult Function(_SubmitSubjectCSVFailed value)
        submitSubjectCSVFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return onSubjectFieldChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubmitSubjects value)? submitSubjects,
    TResult? Function(_SubmitSubjectSuccessful value)? submitSubjectSuccessFul,
    TResult? Function(_SubmitSubjectFailed value)? submitSubjectFailed,
    TResult? Function(_OnSubjectFieldChanged value)? onSubjectFieldChanged,
    TResult? Function(_OnNoteFieldChanged value)? onNoteFieldChanged,
    TResult? Function(_SubmitSubjectCSV value)? submitSubjectCSV,
    TResult? Function(_PickAndUploadCsv value)? pickAndUploadCsv,
    TResult? Function(_SubmitSubjectCSVSuccessful value)?
        submitSubjectCSVSuccessful,
    TResult? Function(_SubmitSubjectCSVFailed value)? submitSubjectCSVFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return onSubjectFieldChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubmitSubjects value)? submitSubjects,
    TResult Function(_SubmitSubjectSuccessful value)? submitSubjectSuccessFul,
    TResult Function(_SubmitSubjectFailed value)? submitSubjectFailed,
    TResult Function(_OnSubjectFieldChanged value)? onSubjectFieldChanged,
    TResult Function(_OnNoteFieldChanged value)? onNoteFieldChanged,
    TResult Function(_SubmitSubjectCSV value)? submitSubjectCSV,
    TResult Function(_PickAndUploadCsv value)? pickAndUploadCsv,
    TResult Function(_SubmitSubjectCSVSuccessful value)?
        submitSubjectCSVSuccessful,
    TResult Function(_SubmitSubjectCSVFailed value)? submitSubjectCSVFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (onSubjectFieldChanged != null) {
      return onSubjectFieldChanged(this);
    }
    return orElse();
  }
}

abstract class _OnSubjectFieldChanged implements AddSubjectsEvent {
  const factory _OnSubjectFieldChanged(final String subject, final int index) =
      _$OnSubjectFieldChangedImpl;

  String get subject;
  int get index;

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnSubjectFieldChangedImplCopyWith<_$OnSubjectFieldChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnNoteFieldChangedImplCopyWith<$Res> {
  factory _$$OnNoteFieldChangedImplCopyWith(_$OnNoteFieldChangedImpl value,
          $Res Function(_$OnNoteFieldChangedImpl) then) =
      __$$OnNoteFieldChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String note, int index});
}

/// @nodoc
class __$$OnNoteFieldChangedImplCopyWithImpl<$Res>
    extends _$AddSubjectsEventCopyWithImpl<$Res, _$OnNoteFieldChangedImpl>
    implements _$$OnNoteFieldChangedImplCopyWith<$Res> {
  __$$OnNoteFieldChangedImplCopyWithImpl(_$OnNoteFieldChangedImpl _value,
      $Res Function(_$OnNoteFieldChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
    Object? index = null,
  }) {
    return _then(_$OnNoteFieldChangedImpl(
      null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnNoteFieldChangedImpl
    with DiagnosticableTreeMixin
    implements _OnNoteFieldChanged {
  const _$OnNoteFieldChangedImpl(this.note, this.index);

  @override
  final String note;
  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddSubjectsEvent.onNoteFieldChanged(note: $note, index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddSubjectsEvent.onNoteFieldChanged'))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnNoteFieldChangedImpl &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note, index);

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnNoteFieldChangedImplCopyWith<_$OnNoteFieldChangedImpl> get copyWith =>
      __$$OnNoteFieldChangedImplCopyWithImpl<_$OnNoteFieldChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Subject> subjects) submitSubjects,
    required TResult Function() submitSubjectSuccessFul,
    required TResult Function(String? message) submitSubjectFailed,
    required TResult Function(String subject, int index) onSubjectFieldChanged,
    required TResult Function(String note, int index) onNoteFieldChanged,
    required TResult Function(PlatformFile file) submitSubjectCSV,
    required TResult Function() pickAndUploadCsv,
    required TResult Function(dynamic hasSaved) submitSubjectCSVSuccessful,
    required TResult Function(String? message) submitSubjectCSVFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return onNoteFieldChanged(note, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<Subject> subjects)? submitSubjects,
    TResult? Function()? submitSubjectSuccessFul,
    TResult? Function(String? message)? submitSubjectFailed,
    TResult? Function(String subject, int index)? onSubjectFieldChanged,
    TResult? Function(String note, int index)? onNoteFieldChanged,
    TResult? Function(PlatformFile file)? submitSubjectCSV,
    TResult? Function()? pickAndUploadCsv,
    TResult? Function(dynamic hasSaved)? submitSubjectCSVSuccessful,
    TResult? Function(String? message)? submitSubjectCSVFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return onNoteFieldChanged?.call(note, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Subject> subjects)? submitSubjects,
    TResult Function()? submitSubjectSuccessFul,
    TResult Function(String? message)? submitSubjectFailed,
    TResult Function(String subject, int index)? onSubjectFieldChanged,
    TResult Function(String note, int index)? onNoteFieldChanged,
    TResult Function(PlatformFile file)? submitSubjectCSV,
    TResult Function()? pickAndUploadCsv,
    TResult Function(dynamic hasSaved)? submitSubjectCSVSuccessful,
    TResult Function(String? message)? submitSubjectCSVFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (onNoteFieldChanged != null) {
      return onNoteFieldChanged(note, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubmitSubjects value) submitSubjects,
    required TResult Function(_SubmitSubjectSuccessful value)
        submitSubjectSuccessFul,
    required TResult Function(_SubmitSubjectFailed value) submitSubjectFailed,
    required TResult Function(_OnSubjectFieldChanged value)
        onSubjectFieldChanged,
    required TResult Function(_OnNoteFieldChanged value) onNoteFieldChanged,
    required TResult Function(_SubmitSubjectCSV value) submitSubjectCSV,
    required TResult Function(_PickAndUploadCsv value) pickAndUploadCsv,
    required TResult Function(_SubmitSubjectCSVSuccessful value)
        submitSubjectCSVSuccessful,
    required TResult Function(_SubmitSubjectCSVFailed value)
        submitSubjectCSVFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return onNoteFieldChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubmitSubjects value)? submitSubjects,
    TResult? Function(_SubmitSubjectSuccessful value)? submitSubjectSuccessFul,
    TResult? Function(_SubmitSubjectFailed value)? submitSubjectFailed,
    TResult? Function(_OnSubjectFieldChanged value)? onSubjectFieldChanged,
    TResult? Function(_OnNoteFieldChanged value)? onNoteFieldChanged,
    TResult? Function(_SubmitSubjectCSV value)? submitSubjectCSV,
    TResult? Function(_PickAndUploadCsv value)? pickAndUploadCsv,
    TResult? Function(_SubmitSubjectCSVSuccessful value)?
        submitSubjectCSVSuccessful,
    TResult? Function(_SubmitSubjectCSVFailed value)? submitSubjectCSVFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return onNoteFieldChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubmitSubjects value)? submitSubjects,
    TResult Function(_SubmitSubjectSuccessful value)? submitSubjectSuccessFul,
    TResult Function(_SubmitSubjectFailed value)? submitSubjectFailed,
    TResult Function(_OnSubjectFieldChanged value)? onSubjectFieldChanged,
    TResult Function(_OnNoteFieldChanged value)? onNoteFieldChanged,
    TResult Function(_SubmitSubjectCSV value)? submitSubjectCSV,
    TResult Function(_PickAndUploadCsv value)? pickAndUploadCsv,
    TResult Function(_SubmitSubjectCSVSuccessful value)?
        submitSubjectCSVSuccessful,
    TResult Function(_SubmitSubjectCSVFailed value)? submitSubjectCSVFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (onNoteFieldChanged != null) {
      return onNoteFieldChanged(this);
    }
    return orElse();
  }
}

abstract class _OnNoteFieldChanged implements AddSubjectsEvent {
  const factory _OnNoteFieldChanged(final String note, final int index) =
      _$OnNoteFieldChangedImpl;

  String get note;
  int get index;

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnNoteFieldChangedImplCopyWith<_$OnNoteFieldChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitSubjectCSVImplCopyWith<$Res> {
  factory _$$SubmitSubjectCSVImplCopyWith(_$SubmitSubjectCSVImpl value,
          $Res Function(_$SubmitSubjectCSVImpl) then) =
      __$$SubmitSubjectCSVImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PlatformFile file});
}

/// @nodoc
class __$$SubmitSubjectCSVImplCopyWithImpl<$Res>
    extends _$AddSubjectsEventCopyWithImpl<$Res, _$SubmitSubjectCSVImpl>
    implements _$$SubmitSubjectCSVImplCopyWith<$Res> {
  __$$SubmitSubjectCSVImplCopyWithImpl(_$SubmitSubjectCSVImpl _value,
      $Res Function(_$SubmitSubjectCSVImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$SubmitSubjectCSVImpl(
      null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as PlatformFile,
    ));
  }
}

/// @nodoc

class _$SubmitSubjectCSVImpl
    with DiagnosticableTreeMixin
    implements _SubmitSubjectCSV {
  const _$SubmitSubjectCSVImpl(this.file);

  @override
  final PlatformFile file;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddSubjectsEvent.submitSubjectCSV(file: $file)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddSubjectsEvent.submitSubjectCSV'))
      ..add(DiagnosticsProperty('file', file));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitSubjectCSVImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitSubjectCSVImplCopyWith<_$SubmitSubjectCSVImpl> get copyWith =>
      __$$SubmitSubjectCSVImplCopyWithImpl<_$SubmitSubjectCSVImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Subject> subjects) submitSubjects,
    required TResult Function() submitSubjectSuccessFul,
    required TResult Function(String? message) submitSubjectFailed,
    required TResult Function(String subject, int index) onSubjectFieldChanged,
    required TResult Function(String note, int index) onNoteFieldChanged,
    required TResult Function(PlatformFile file) submitSubjectCSV,
    required TResult Function() pickAndUploadCsv,
    required TResult Function(dynamic hasSaved) submitSubjectCSVSuccessful,
    required TResult Function(String? message) submitSubjectCSVFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return submitSubjectCSV(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<Subject> subjects)? submitSubjects,
    TResult? Function()? submitSubjectSuccessFul,
    TResult? Function(String? message)? submitSubjectFailed,
    TResult? Function(String subject, int index)? onSubjectFieldChanged,
    TResult? Function(String note, int index)? onNoteFieldChanged,
    TResult? Function(PlatformFile file)? submitSubjectCSV,
    TResult? Function()? pickAndUploadCsv,
    TResult? Function(dynamic hasSaved)? submitSubjectCSVSuccessful,
    TResult? Function(String? message)? submitSubjectCSVFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return submitSubjectCSV?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Subject> subjects)? submitSubjects,
    TResult Function()? submitSubjectSuccessFul,
    TResult Function(String? message)? submitSubjectFailed,
    TResult Function(String subject, int index)? onSubjectFieldChanged,
    TResult Function(String note, int index)? onNoteFieldChanged,
    TResult Function(PlatformFile file)? submitSubjectCSV,
    TResult Function()? pickAndUploadCsv,
    TResult Function(dynamic hasSaved)? submitSubjectCSVSuccessful,
    TResult Function(String? message)? submitSubjectCSVFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (submitSubjectCSV != null) {
      return submitSubjectCSV(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubmitSubjects value) submitSubjects,
    required TResult Function(_SubmitSubjectSuccessful value)
        submitSubjectSuccessFul,
    required TResult Function(_SubmitSubjectFailed value) submitSubjectFailed,
    required TResult Function(_OnSubjectFieldChanged value)
        onSubjectFieldChanged,
    required TResult Function(_OnNoteFieldChanged value) onNoteFieldChanged,
    required TResult Function(_SubmitSubjectCSV value) submitSubjectCSV,
    required TResult Function(_PickAndUploadCsv value) pickAndUploadCsv,
    required TResult Function(_SubmitSubjectCSVSuccessful value)
        submitSubjectCSVSuccessful,
    required TResult Function(_SubmitSubjectCSVFailed value)
        submitSubjectCSVFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return submitSubjectCSV(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubmitSubjects value)? submitSubjects,
    TResult? Function(_SubmitSubjectSuccessful value)? submitSubjectSuccessFul,
    TResult? Function(_SubmitSubjectFailed value)? submitSubjectFailed,
    TResult? Function(_OnSubjectFieldChanged value)? onSubjectFieldChanged,
    TResult? Function(_OnNoteFieldChanged value)? onNoteFieldChanged,
    TResult? Function(_SubmitSubjectCSV value)? submitSubjectCSV,
    TResult? Function(_PickAndUploadCsv value)? pickAndUploadCsv,
    TResult? Function(_SubmitSubjectCSVSuccessful value)?
        submitSubjectCSVSuccessful,
    TResult? Function(_SubmitSubjectCSVFailed value)? submitSubjectCSVFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return submitSubjectCSV?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubmitSubjects value)? submitSubjects,
    TResult Function(_SubmitSubjectSuccessful value)? submitSubjectSuccessFul,
    TResult Function(_SubmitSubjectFailed value)? submitSubjectFailed,
    TResult Function(_OnSubjectFieldChanged value)? onSubjectFieldChanged,
    TResult Function(_OnNoteFieldChanged value)? onNoteFieldChanged,
    TResult Function(_SubmitSubjectCSV value)? submitSubjectCSV,
    TResult Function(_PickAndUploadCsv value)? pickAndUploadCsv,
    TResult Function(_SubmitSubjectCSVSuccessful value)?
        submitSubjectCSVSuccessful,
    TResult Function(_SubmitSubjectCSVFailed value)? submitSubjectCSVFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (submitSubjectCSV != null) {
      return submitSubjectCSV(this);
    }
    return orElse();
  }
}

abstract class _SubmitSubjectCSV implements AddSubjectsEvent {
  const factory _SubmitSubjectCSV(final PlatformFile file) =
      _$SubmitSubjectCSVImpl;

  PlatformFile get file;

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitSubjectCSVImplCopyWith<_$SubmitSubjectCSVImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickAndUploadCsvImplCopyWith<$Res> {
  factory _$$PickAndUploadCsvImplCopyWith(_$PickAndUploadCsvImpl value,
          $Res Function(_$PickAndUploadCsvImpl) then) =
      __$$PickAndUploadCsvImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickAndUploadCsvImplCopyWithImpl<$Res>
    extends _$AddSubjectsEventCopyWithImpl<$Res, _$PickAndUploadCsvImpl>
    implements _$$PickAndUploadCsvImplCopyWith<$Res> {
  __$$PickAndUploadCsvImplCopyWithImpl(_$PickAndUploadCsvImpl _value,
      $Res Function(_$PickAndUploadCsvImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PickAndUploadCsvImpl
    with DiagnosticableTreeMixin
    implements _PickAndUploadCsv {
  const _$PickAndUploadCsvImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddSubjectsEvent.pickAndUploadCsv()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AddSubjectsEvent.pickAndUploadCsv'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PickAndUploadCsvImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Subject> subjects) submitSubjects,
    required TResult Function() submitSubjectSuccessFul,
    required TResult Function(String? message) submitSubjectFailed,
    required TResult Function(String subject, int index) onSubjectFieldChanged,
    required TResult Function(String note, int index) onNoteFieldChanged,
    required TResult Function(PlatformFile file) submitSubjectCSV,
    required TResult Function() pickAndUploadCsv,
    required TResult Function(dynamic hasSaved) submitSubjectCSVSuccessful,
    required TResult Function(String? message) submitSubjectCSVFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return pickAndUploadCsv();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<Subject> subjects)? submitSubjects,
    TResult? Function()? submitSubjectSuccessFul,
    TResult? Function(String? message)? submitSubjectFailed,
    TResult? Function(String subject, int index)? onSubjectFieldChanged,
    TResult? Function(String note, int index)? onNoteFieldChanged,
    TResult? Function(PlatformFile file)? submitSubjectCSV,
    TResult? Function()? pickAndUploadCsv,
    TResult? Function(dynamic hasSaved)? submitSubjectCSVSuccessful,
    TResult? Function(String? message)? submitSubjectCSVFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return pickAndUploadCsv?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Subject> subjects)? submitSubjects,
    TResult Function()? submitSubjectSuccessFul,
    TResult Function(String? message)? submitSubjectFailed,
    TResult Function(String subject, int index)? onSubjectFieldChanged,
    TResult Function(String note, int index)? onNoteFieldChanged,
    TResult Function(PlatformFile file)? submitSubjectCSV,
    TResult Function()? pickAndUploadCsv,
    TResult Function(dynamic hasSaved)? submitSubjectCSVSuccessful,
    TResult Function(String? message)? submitSubjectCSVFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (pickAndUploadCsv != null) {
      return pickAndUploadCsv();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubmitSubjects value) submitSubjects,
    required TResult Function(_SubmitSubjectSuccessful value)
        submitSubjectSuccessFul,
    required TResult Function(_SubmitSubjectFailed value) submitSubjectFailed,
    required TResult Function(_OnSubjectFieldChanged value)
        onSubjectFieldChanged,
    required TResult Function(_OnNoteFieldChanged value) onNoteFieldChanged,
    required TResult Function(_SubmitSubjectCSV value) submitSubjectCSV,
    required TResult Function(_PickAndUploadCsv value) pickAndUploadCsv,
    required TResult Function(_SubmitSubjectCSVSuccessful value)
        submitSubjectCSVSuccessful,
    required TResult Function(_SubmitSubjectCSVFailed value)
        submitSubjectCSVFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return pickAndUploadCsv(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubmitSubjects value)? submitSubjects,
    TResult? Function(_SubmitSubjectSuccessful value)? submitSubjectSuccessFul,
    TResult? Function(_SubmitSubjectFailed value)? submitSubjectFailed,
    TResult? Function(_OnSubjectFieldChanged value)? onSubjectFieldChanged,
    TResult? Function(_OnNoteFieldChanged value)? onNoteFieldChanged,
    TResult? Function(_SubmitSubjectCSV value)? submitSubjectCSV,
    TResult? Function(_PickAndUploadCsv value)? pickAndUploadCsv,
    TResult? Function(_SubmitSubjectCSVSuccessful value)?
        submitSubjectCSVSuccessful,
    TResult? Function(_SubmitSubjectCSVFailed value)? submitSubjectCSVFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return pickAndUploadCsv?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubmitSubjects value)? submitSubjects,
    TResult Function(_SubmitSubjectSuccessful value)? submitSubjectSuccessFul,
    TResult Function(_SubmitSubjectFailed value)? submitSubjectFailed,
    TResult Function(_OnSubjectFieldChanged value)? onSubjectFieldChanged,
    TResult Function(_OnNoteFieldChanged value)? onNoteFieldChanged,
    TResult Function(_SubmitSubjectCSV value)? submitSubjectCSV,
    TResult Function(_PickAndUploadCsv value)? pickAndUploadCsv,
    TResult Function(_SubmitSubjectCSVSuccessful value)?
        submitSubjectCSVSuccessful,
    TResult Function(_SubmitSubjectCSVFailed value)? submitSubjectCSVFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (pickAndUploadCsv != null) {
      return pickAndUploadCsv(this);
    }
    return orElse();
  }
}

abstract class _PickAndUploadCsv implements AddSubjectsEvent {
  const factory _PickAndUploadCsv() = _$PickAndUploadCsvImpl;
}

/// @nodoc
abstract class _$$SubmitSubjectCSVSuccessfulImplCopyWith<$Res> {
  factory _$$SubmitSubjectCSVSuccessfulImplCopyWith(
          _$SubmitSubjectCSVSuccessfulImpl value,
          $Res Function(_$SubmitSubjectCSVSuccessfulImpl) then) =
      __$$SubmitSubjectCSVSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic hasSaved});
}

/// @nodoc
class __$$SubmitSubjectCSVSuccessfulImplCopyWithImpl<$Res>
    extends _$AddSubjectsEventCopyWithImpl<$Res,
        _$SubmitSubjectCSVSuccessfulImpl>
    implements _$$SubmitSubjectCSVSuccessfulImplCopyWith<$Res> {
  __$$SubmitSubjectCSVSuccessfulImplCopyWithImpl(
      _$SubmitSubjectCSVSuccessfulImpl _value,
      $Res Function(_$SubmitSubjectCSVSuccessfulImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasSaved = freezed,
  }) {
    return _then(_$SubmitSubjectCSVSuccessfulImpl(
      freezed == hasSaved ? _value.hasSaved! : hasSaved,
    ));
  }
}

/// @nodoc

class _$SubmitSubjectCSVSuccessfulImpl
    with DiagnosticableTreeMixin
    implements _SubmitSubjectCSVSuccessful {
  const _$SubmitSubjectCSVSuccessfulImpl(this.hasSaved);

  @override
  final dynamic hasSaved;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddSubjectsEvent.submitSubjectCSVSuccessful(hasSaved: $hasSaved)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AddSubjectsEvent.submitSubjectCSVSuccessful'))
      ..add(DiagnosticsProperty('hasSaved', hasSaved));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitSubjectCSVSuccessfulImpl &&
            const DeepCollectionEquality().equals(other.hasSaved, hasSaved));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(hasSaved));

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitSubjectCSVSuccessfulImplCopyWith<_$SubmitSubjectCSVSuccessfulImpl>
      get copyWith => __$$SubmitSubjectCSVSuccessfulImplCopyWithImpl<
          _$SubmitSubjectCSVSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Subject> subjects) submitSubjects,
    required TResult Function() submitSubjectSuccessFul,
    required TResult Function(String? message) submitSubjectFailed,
    required TResult Function(String subject, int index) onSubjectFieldChanged,
    required TResult Function(String note, int index) onNoteFieldChanged,
    required TResult Function(PlatformFile file) submitSubjectCSV,
    required TResult Function() pickAndUploadCsv,
    required TResult Function(dynamic hasSaved) submitSubjectCSVSuccessful,
    required TResult Function(String? message) submitSubjectCSVFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return submitSubjectCSVSuccessful(hasSaved);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<Subject> subjects)? submitSubjects,
    TResult? Function()? submitSubjectSuccessFul,
    TResult? Function(String? message)? submitSubjectFailed,
    TResult? Function(String subject, int index)? onSubjectFieldChanged,
    TResult? Function(String note, int index)? onNoteFieldChanged,
    TResult? Function(PlatformFile file)? submitSubjectCSV,
    TResult? Function()? pickAndUploadCsv,
    TResult? Function(dynamic hasSaved)? submitSubjectCSVSuccessful,
    TResult? Function(String? message)? submitSubjectCSVFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return submitSubjectCSVSuccessful?.call(hasSaved);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Subject> subjects)? submitSubjects,
    TResult Function()? submitSubjectSuccessFul,
    TResult Function(String? message)? submitSubjectFailed,
    TResult Function(String subject, int index)? onSubjectFieldChanged,
    TResult Function(String note, int index)? onNoteFieldChanged,
    TResult Function(PlatformFile file)? submitSubjectCSV,
    TResult Function()? pickAndUploadCsv,
    TResult Function(dynamic hasSaved)? submitSubjectCSVSuccessful,
    TResult Function(String? message)? submitSubjectCSVFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (submitSubjectCSVSuccessful != null) {
      return submitSubjectCSVSuccessful(hasSaved);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubmitSubjects value) submitSubjects,
    required TResult Function(_SubmitSubjectSuccessful value)
        submitSubjectSuccessFul,
    required TResult Function(_SubmitSubjectFailed value) submitSubjectFailed,
    required TResult Function(_OnSubjectFieldChanged value)
        onSubjectFieldChanged,
    required TResult Function(_OnNoteFieldChanged value) onNoteFieldChanged,
    required TResult Function(_SubmitSubjectCSV value) submitSubjectCSV,
    required TResult Function(_PickAndUploadCsv value) pickAndUploadCsv,
    required TResult Function(_SubmitSubjectCSVSuccessful value)
        submitSubjectCSVSuccessful,
    required TResult Function(_SubmitSubjectCSVFailed value)
        submitSubjectCSVFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return submitSubjectCSVSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubmitSubjects value)? submitSubjects,
    TResult? Function(_SubmitSubjectSuccessful value)? submitSubjectSuccessFul,
    TResult? Function(_SubmitSubjectFailed value)? submitSubjectFailed,
    TResult? Function(_OnSubjectFieldChanged value)? onSubjectFieldChanged,
    TResult? Function(_OnNoteFieldChanged value)? onNoteFieldChanged,
    TResult? Function(_SubmitSubjectCSV value)? submitSubjectCSV,
    TResult? Function(_PickAndUploadCsv value)? pickAndUploadCsv,
    TResult? Function(_SubmitSubjectCSVSuccessful value)?
        submitSubjectCSVSuccessful,
    TResult? Function(_SubmitSubjectCSVFailed value)? submitSubjectCSVFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return submitSubjectCSVSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubmitSubjects value)? submitSubjects,
    TResult Function(_SubmitSubjectSuccessful value)? submitSubjectSuccessFul,
    TResult Function(_SubmitSubjectFailed value)? submitSubjectFailed,
    TResult Function(_OnSubjectFieldChanged value)? onSubjectFieldChanged,
    TResult Function(_OnNoteFieldChanged value)? onNoteFieldChanged,
    TResult Function(_SubmitSubjectCSV value)? submitSubjectCSV,
    TResult Function(_PickAndUploadCsv value)? pickAndUploadCsv,
    TResult Function(_SubmitSubjectCSVSuccessful value)?
        submitSubjectCSVSuccessful,
    TResult Function(_SubmitSubjectCSVFailed value)? submitSubjectCSVFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (submitSubjectCSVSuccessful != null) {
      return submitSubjectCSVSuccessful(this);
    }
    return orElse();
  }
}

abstract class _SubmitSubjectCSVSuccessful implements AddSubjectsEvent {
  const factory _SubmitSubjectCSVSuccessful(final dynamic hasSaved) =
      _$SubmitSubjectCSVSuccessfulImpl;

  dynamic get hasSaved;

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitSubjectCSVSuccessfulImplCopyWith<_$SubmitSubjectCSVSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitSubjectCSVFailedImplCopyWith<$Res> {
  factory _$$SubmitSubjectCSVFailedImplCopyWith(
          _$SubmitSubjectCSVFailedImpl value,
          $Res Function(_$SubmitSubjectCSVFailedImpl) then) =
      __$$SubmitSubjectCSVFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$SubmitSubjectCSVFailedImplCopyWithImpl<$Res>
    extends _$AddSubjectsEventCopyWithImpl<$Res, _$SubmitSubjectCSVFailedImpl>
    implements _$$SubmitSubjectCSVFailedImplCopyWith<$Res> {
  __$$SubmitSubjectCSVFailedImplCopyWithImpl(
      _$SubmitSubjectCSVFailedImpl _value,
      $Res Function(_$SubmitSubjectCSVFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$SubmitSubjectCSVFailedImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SubmitSubjectCSVFailedImpl
    with DiagnosticableTreeMixin
    implements _SubmitSubjectCSVFailed {
  const _$SubmitSubjectCSVFailedImpl(this.message);

  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddSubjectsEvent.submitSubjectCSVFailed(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AddSubjectsEvent.submitSubjectCSVFailed'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitSubjectCSVFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitSubjectCSVFailedImplCopyWith<_$SubmitSubjectCSVFailedImpl>
      get copyWith => __$$SubmitSubjectCSVFailedImplCopyWithImpl<
          _$SubmitSubjectCSVFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Subject> subjects) submitSubjects,
    required TResult Function() submitSubjectSuccessFul,
    required TResult Function(String? message) submitSubjectFailed,
    required TResult Function(String subject, int index) onSubjectFieldChanged,
    required TResult Function(String note, int index) onNoteFieldChanged,
    required TResult Function(PlatformFile file) submitSubjectCSV,
    required TResult Function() pickAndUploadCsv,
    required TResult Function(dynamic hasSaved) submitSubjectCSVSuccessful,
    required TResult Function(String? message) submitSubjectCSVFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return submitSubjectCSVFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<Subject> subjects)? submitSubjects,
    TResult? Function()? submitSubjectSuccessFul,
    TResult? Function(String? message)? submitSubjectFailed,
    TResult? Function(String subject, int index)? onSubjectFieldChanged,
    TResult? Function(String note, int index)? onNoteFieldChanged,
    TResult? Function(PlatformFile file)? submitSubjectCSV,
    TResult? Function()? pickAndUploadCsv,
    TResult? Function(dynamic hasSaved)? submitSubjectCSVSuccessful,
    TResult? Function(String? message)? submitSubjectCSVFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return submitSubjectCSVFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Subject> subjects)? submitSubjects,
    TResult Function()? submitSubjectSuccessFul,
    TResult Function(String? message)? submitSubjectFailed,
    TResult Function(String subject, int index)? onSubjectFieldChanged,
    TResult Function(String note, int index)? onNoteFieldChanged,
    TResult Function(PlatformFile file)? submitSubjectCSV,
    TResult Function()? pickAndUploadCsv,
    TResult Function(dynamic hasSaved)? submitSubjectCSVSuccessful,
    TResult Function(String? message)? submitSubjectCSVFailed,
    TResult Function(String? message)? errorMessage,
    required TResult orElse(),
  }) {
    if (submitSubjectCSVFailed != null) {
      return submitSubjectCSVFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubmitSubjects value) submitSubjects,
    required TResult Function(_SubmitSubjectSuccessful value)
        submitSubjectSuccessFul,
    required TResult Function(_SubmitSubjectFailed value) submitSubjectFailed,
    required TResult Function(_OnSubjectFieldChanged value)
        onSubjectFieldChanged,
    required TResult Function(_OnNoteFieldChanged value) onNoteFieldChanged,
    required TResult Function(_SubmitSubjectCSV value) submitSubjectCSV,
    required TResult Function(_PickAndUploadCsv value) pickAndUploadCsv,
    required TResult Function(_SubmitSubjectCSVSuccessful value)
        submitSubjectCSVSuccessful,
    required TResult Function(_SubmitSubjectCSVFailed value)
        submitSubjectCSVFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return submitSubjectCSVFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubmitSubjects value)? submitSubjects,
    TResult? Function(_SubmitSubjectSuccessful value)? submitSubjectSuccessFul,
    TResult? Function(_SubmitSubjectFailed value)? submitSubjectFailed,
    TResult? Function(_OnSubjectFieldChanged value)? onSubjectFieldChanged,
    TResult? Function(_OnNoteFieldChanged value)? onNoteFieldChanged,
    TResult? Function(_SubmitSubjectCSV value)? submitSubjectCSV,
    TResult? Function(_PickAndUploadCsv value)? pickAndUploadCsv,
    TResult? Function(_SubmitSubjectCSVSuccessful value)?
        submitSubjectCSVSuccessful,
    TResult? Function(_SubmitSubjectCSVFailed value)? submitSubjectCSVFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return submitSubjectCSVFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubmitSubjects value)? submitSubjects,
    TResult Function(_SubmitSubjectSuccessful value)? submitSubjectSuccessFul,
    TResult Function(_SubmitSubjectFailed value)? submitSubjectFailed,
    TResult Function(_OnSubjectFieldChanged value)? onSubjectFieldChanged,
    TResult Function(_OnNoteFieldChanged value)? onNoteFieldChanged,
    TResult Function(_SubmitSubjectCSV value)? submitSubjectCSV,
    TResult Function(_PickAndUploadCsv value)? pickAndUploadCsv,
    TResult Function(_SubmitSubjectCSVSuccessful value)?
        submitSubjectCSVSuccessful,
    TResult Function(_SubmitSubjectCSVFailed value)? submitSubjectCSVFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (submitSubjectCSVFailed != null) {
      return submitSubjectCSVFailed(this);
    }
    return orElse();
  }
}

abstract class _SubmitSubjectCSVFailed implements AddSubjectsEvent {
  const factory _SubmitSubjectCSVFailed(final String? message) =
      _$SubmitSubjectCSVFailedImpl;

  String? get message;

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitSubjectCSVFailedImplCopyWith<_$SubmitSubjectCSVFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$AddSubjectsEventCopyWithImpl<$Res, _$ErrorMessageImpl>
    implements _$$ErrorMessageImplCopyWith<$Res> {
  __$$ErrorMessageImplCopyWithImpl(
      _$ErrorMessageImpl _value, $Res Function(_$ErrorMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddSubjectsEvent
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
    return 'AddSubjectsEvent.errorMessage(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddSubjectsEvent.errorMessage'))
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

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorMessageImplCopyWith<_$ErrorMessageImpl> get copyWith =>
      __$$ErrorMessageImplCopyWithImpl<_$ErrorMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<Subject> subjects) submitSubjects,
    required TResult Function() submitSubjectSuccessFul,
    required TResult Function(String? message) submitSubjectFailed,
    required TResult Function(String subject, int index) onSubjectFieldChanged,
    required TResult Function(String note, int index) onNoteFieldChanged,
    required TResult Function(PlatformFile file) submitSubjectCSV,
    required TResult Function() pickAndUploadCsv,
    required TResult Function(dynamic hasSaved) submitSubjectCSVSuccessful,
    required TResult Function(String? message) submitSubjectCSVFailed,
    required TResult Function(String? message) errorMessage,
  }) {
    return errorMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<Subject> subjects)? submitSubjects,
    TResult? Function()? submitSubjectSuccessFul,
    TResult? Function(String? message)? submitSubjectFailed,
    TResult? Function(String subject, int index)? onSubjectFieldChanged,
    TResult? Function(String note, int index)? onNoteFieldChanged,
    TResult? Function(PlatformFile file)? submitSubjectCSV,
    TResult? Function()? pickAndUploadCsv,
    TResult? Function(dynamic hasSaved)? submitSubjectCSVSuccessful,
    TResult? Function(String? message)? submitSubjectCSVFailed,
    TResult? Function(String? message)? errorMessage,
  }) {
    return errorMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Subject> subjects)? submitSubjects,
    TResult Function()? submitSubjectSuccessFul,
    TResult Function(String? message)? submitSubjectFailed,
    TResult Function(String subject, int index)? onSubjectFieldChanged,
    TResult Function(String note, int index)? onNoteFieldChanged,
    TResult Function(PlatformFile file)? submitSubjectCSV,
    TResult Function()? pickAndUploadCsv,
    TResult Function(dynamic hasSaved)? submitSubjectCSVSuccessful,
    TResult Function(String? message)? submitSubjectCSVFailed,
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
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubmitSubjects value) submitSubjects,
    required TResult Function(_SubmitSubjectSuccessful value)
        submitSubjectSuccessFul,
    required TResult Function(_SubmitSubjectFailed value) submitSubjectFailed,
    required TResult Function(_OnSubjectFieldChanged value)
        onSubjectFieldChanged,
    required TResult Function(_OnNoteFieldChanged value) onNoteFieldChanged,
    required TResult Function(_SubmitSubjectCSV value) submitSubjectCSV,
    required TResult Function(_PickAndUploadCsv value) pickAndUploadCsv,
    required TResult Function(_SubmitSubjectCSVSuccessful value)
        submitSubjectCSVSuccessful,
    required TResult Function(_SubmitSubjectCSVFailed value)
        submitSubjectCSVFailed,
    required TResult Function(_ErrorMessage value) errorMessage,
  }) {
    return errorMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SubmitSubjects value)? submitSubjects,
    TResult? Function(_SubmitSubjectSuccessful value)? submitSubjectSuccessFul,
    TResult? Function(_SubmitSubjectFailed value)? submitSubjectFailed,
    TResult? Function(_OnSubjectFieldChanged value)? onSubjectFieldChanged,
    TResult? Function(_OnNoteFieldChanged value)? onNoteFieldChanged,
    TResult? Function(_SubmitSubjectCSV value)? submitSubjectCSV,
    TResult? Function(_PickAndUploadCsv value)? pickAndUploadCsv,
    TResult? Function(_SubmitSubjectCSVSuccessful value)?
        submitSubjectCSVSuccessful,
    TResult? Function(_SubmitSubjectCSVFailed value)? submitSubjectCSVFailed,
    TResult? Function(_ErrorMessage value)? errorMessage,
  }) {
    return errorMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubmitSubjects value)? submitSubjects,
    TResult Function(_SubmitSubjectSuccessful value)? submitSubjectSuccessFul,
    TResult Function(_SubmitSubjectFailed value)? submitSubjectFailed,
    TResult Function(_OnSubjectFieldChanged value)? onSubjectFieldChanged,
    TResult Function(_OnNoteFieldChanged value)? onNoteFieldChanged,
    TResult Function(_SubmitSubjectCSV value)? submitSubjectCSV,
    TResult Function(_PickAndUploadCsv value)? pickAndUploadCsv,
    TResult Function(_SubmitSubjectCSVSuccessful value)?
        submitSubjectCSVSuccessful,
    TResult Function(_SubmitSubjectCSVFailed value)? submitSubjectCSVFailed,
    TResult Function(_ErrorMessage value)? errorMessage,
    required TResult orElse(),
  }) {
    if (errorMessage != null) {
      return errorMessage(this);
    }
    return orElse();
  }
}

abstract class _ErrorMessage implements AddSubjectsEvent {
  const factory _ErrorMessage(final String? message) = _$ErrorMessageImpl;

  String? get message;

  /// Create a copy of AddSubjectsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorMessageImplCopyWith<_$ErrorMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddSubjectsState {
  String? get selectedClass => throw _privateConstructorUsedError;
  List<String> get csvClasses => throw _privateConstructorUsedError;
  SubjectFormz get subject => throw _privateConstructorUsedError;
  NoteFormz get note => throw _privateConstructorUsedError;
  dynamic get hasSaved => throw _privateConstructorUsedError;
  FormzSubmissionStatus get subjectUploadStatus =>
      throw _privateConstructorUsedError;
  FormzSubmissionStatus get submitSubjectCSVStatus =>
      throw _privateConstructorUsedError;
  File? get file => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of AddSubjectsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddSubjectsStateCopyWith<AddSubjectsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddSubjectsStateCopyWith<$Res> {
  factory $AddSubjectsStateCopyWith(
          AddSubjectsState value, $Res Function(AddSubjectsState) then) =
      _$AddSubjectsStateCopyWithImpl<$Res, AddSubjectsState>;
  @useResult
  $Res call(
      {String? selectedClass,
      List<String> csvClasses,
      SubjectFormz subject,
      NoteFormz note,
      dynamic hasSaved,
      FormzSubmissionStatus subjectUploadStatus,
      FormzSubmissionStatus submitSubjectCSVStatus,
      File? file,
      String? errorMessage});
}

/// @nodoc
class _$AddSubjectsStateCopyWithImpl<$Res, $Val extends AddSubjectsState>
    implements $AddSubjectsStateCopyWith<$Res> {
  _$AddSubjectsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddSubjectsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedClass = freezed,
    Object? csvClasses = null,
    Object? subject = null,
    Object? note = null,
    Object? hasSaved = freezed,
    Object? subjectUploadStatus = null,
    Object? submitSubjectCSVStatus = null,
    Object? file = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      selectedClass: freezed == selectedClass
          ? _value.selectedClass
          : selectedClass // ignore: cast_nullable_to_non_nullable
              as String?,
      csvClasses: null == csvClasses
          ? _value.csvClasses
          : csvClasses // ignore: cast_nullable_to_non_nullable
              as List<String>,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as SubjectFormz,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NoteFormz,
      hasSaved: freezed == hasSaved
          ? _value.hasSaved
          : hasSaved // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subjectUploadStatus: null == subjectUploadStatus
          ? _value.subjectUploadStatus
          : subjectUploadStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      submitSubjectCSVStatus: null == submitSubjectCSVStatus
          ? _value.submitSubjectCSVStatus
          : submitSubjectCSVStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddSubjectsStateImplCopyWith<$Res>
    implements $AddSubjectsStateCopyWith<$Res> {
  factory _$$AddSubjectsStateImplCopyWith(_$AddSubjectsStateImpl value,
          $Res Function(_$AddSubjectsStateImpl) then) =
      __$$AddSubjectsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? selectedClass,
      List<String> csvClasses,
      SubjectFormz subject,
      NoteFormz note,
      dynamic hasSaved,
      FormzSubmissionStatus subjectUploadStatus,
      FormzSubmissionStatus submitSubjectCSVStatus,
      File? file,
      String? errorMessage});
}

/// @nodoc
class __$$AddSubjectsStateImplCopyWithImpl<$Res>
    extends _$AddSubjectsStateCopyWithImpl<$Res, _$AddSubjectsStateImpl>
    implements _$$AddSubjectsStateImplCopyWith<$Res> {
  __$$AddSubjectsStateImplCopyWithImpl(_$AddSubjectsStateImpl _value,
      $Res Function(_$AddSubjectsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddSubjectsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedClass = freezed,
    Object? csvClasses = null,
    Object? subject = null,
    Object? note = null,
    Object? hasSaved = freezed,
    Object? subjectUploadStatus = null,
    Object? submitSubjectCSVStatus = null,
    Object? file = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AddSubjectsStateImpl(
      selectedClass: freezed == selectedClass
          ? _value.selectedClass
          : selectedClass // ignore: cast_nullable_to_non_nullable
              as String?,
      csvClasses: null == csvClasses
          ? _value._csvClasses
          : csvClasses // ignore: cast_nullable_to_non_nullable
              as List<String>,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as SubjectFormz,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NoteFormz,
      hasSaved: freezed == hasSaved ? _value.hasSaved! : hasSaved,
      subjectUploadStatus: null == subjectUploadStatus
          ? _value.subjectUploadStatus
          : subjectUploadStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      submitSubjectCSVStatus: null == submitSubjectCSVStatus
          ? _value.submitSubjectCSVStatus
          : submitSubjectCSVStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddSubjectsStateImpl extends _AddSubjectsState
    with DiagnosticableTreeMixin {
  const _$AddSubjectsStateImpl(
      {this.selectedClass,
      final List<String> csvClasses = const [],
      this.subject = const SubjectFormz.pure(),
      this.note = const NoteFormz.pure(),
      this.hasSaved = false,
      this.subjectUploadStatus = FormzSubmissionStatus.initial,
      this.submitSubjectCSVStatus = FormzSubmissionStatus.initial,
      this.file,
      this.errorMessage})
      : _csvClasses = csvClasses,
        super._();

  @override
  final String? selectedClass;
  final List<String> _csvClasses;
  @override
  @JsonKey()
  List<String> get csvClasses {
    if (_csvClasses is EqualUnmodifiableListView) return _csvClasses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_csvClasses);
  }

  @override
  @JsonKey()
  final SubjectFormz subject;
  @override
  @JsonKey()
  final NoteFormz note;
  @override
  @JsonKey()
  final dynamic hasSaved;
  @override
  @JsonKey()
  final FormzSubmissionStatus subjectUploadStatus;
  @override
  @JsonKey()
  final FormzSubmissionStatus submitSubjectCSVStatus;
  @override
  final File? file;
  @override
  final String? errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddSubjectsState(selectedClass: $selectedClass, csvClasses: $csvClasses, subject: $subject, note: $note, hasSaved: $hasSaved, subjectUploadStatus: $subjectUploadStatus, submitSubjectCSVStatus: $submitSubjectCSVStatus, file: $file, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddSubjectsState'))
      ..add(DiagnosticsProperty('selectedClass', selectedClass))
      ..add(DiagnosticsProperty('csvClasses', csvClasses))
      ..add(DiagnosticsProperty('subject', subject))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('hasSaved', hasSaved))
      ..add(DiagnosticsProperty('subjectUploadStatus', subjectUploadStatus))
      ..add(
          DiagnosticsProperty('submitSubjectCSVStatus', submitSubjectCSVStatus))
      ..add(DiagnosticsProperty('file', file))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSubjectsStateImpl &&
            (identical(other.selectedClass, selectedClass) ||
                other.selectedClass == selectedClass) &&
            const DeepCollectionEquality()
                .equals(other._csvClasses, _csvClasses) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.note, note) || other.note == note) &&
            const DeepCollectionEquality().equals(other.hasSaved, hasSaved) &&
            (identical(other.subjectUploadStatus, subjectUploadStatus) ||
                other.subjectUploadStatus == subjectUploadStatus) &&
            (identical(other.submitSubjectCSVStatus, submitSubjectCSVStatus) ||
                other.submitSubjectCSVStatus == submitSubjectCSVStatus) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedClass,
      const DeepCollectionEquality().hash(_csvClasses),
      subject,
      note,
      const DeepCollectionEquality().hash(hasSaved),
      subjectUploadStatus,
      submitSubjectCSVStatus,
      file,
      errorMessage);

  /// Create a copy of AddSubjectsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSubjectsStateImplCopyWith<_$AddSubjectsStateImpl> get copyWith =>
      __$$AddSubjectsStateImplCopyWithImpl<_$AddSubjectsStateImpl>(
          this, _$identity);
}

abstract class _AddSubjectsState extends AddSubjectsState {
  const factory _AddSubjectsState(
      {final String? selectedClass,
      final List<String> csvClasses,
      final SubjectFormz subject,
      final NoteFormz note,
      final dynamic hasSaved,
      final FormzSubmissionStatus subjectUploadStatus,
      final FormzSubmissionStatus submitSubjectCSVStatus,
      final File? file,
      final String? errorMessage}) = _$AddSubjectsStateImpl;
  const _AddSubjectsState._() : super._();

  @override
  String? get selectedClass;
  @override
  List<String> get csvClasses;
  @override
  SubjectFormz get subject;
  @override
  NoteFormz get note;
  @override
  dynamic get hasSaved;
  @override
  FormzSubmissionStatus get subjectUploadStatus;
  @override
  FormzSubmissionStatus get submitSubjectCSVStatus;
  @override
  File? get file;
  @override
  String? get errorMessage;

  /// Create a copy of AddSubjectsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddSubjectsStateImplCopyWith<_$AddSubjectsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
