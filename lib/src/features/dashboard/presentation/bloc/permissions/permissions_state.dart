part of 'permissions_bloc.dart';

@freezed
class PermissionsState with _$PermissionsState {
  const factory PermissionsState.initial({
    @Default(false) bool isReadStorageEnabled,
    @Default(false) bool isPhotoLibraryEnabled,
    @Default(false) bool isReadMediaImageEnabled,
    @Default(false) bool isNotificationEnabled,
  }) = _Initial;
}
