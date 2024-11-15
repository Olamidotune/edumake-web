part of 'permissions_bloc.dart';

@freezed
class PermissionsState with _$PermissionsState {
  const factory PermissionsState.initial({
    @Default(false) bool isReadStoragePermissionGranted,
    @Default(false) bool isWriteStoragePermissionGranted,
    @Default(false) bool isAccessMediaLocationPermissionGranted,
    @Default(false) bool isReadMediaImagePermissionGranted,
  }) = _Initial;
}
