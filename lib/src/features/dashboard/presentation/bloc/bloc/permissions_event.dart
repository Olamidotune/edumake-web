part of 'permissions_bloc.dart';

@freezed
class PermissionsEvent with _$PermissionsEvent {
  const factory PermissionsEvent.started() = _Started;
  const factory PermissionsEvent.checkReadStoragePermissionGranted() =
      _CheckReadStoragePermissionGranted;
  const factory PermissionsEvent.checkWriteStoragePermissionGranted() =
      _CheckWriteStoragePermission;
  const factory PermissionsEvent.checkAccessMediaLocationPermissionGranted() =
      _CheckAccessMediaLocationPermission;
  const factory PermissionsEvent.checkReadMediaImagePermissionGranted() =
      _CheckReadMediaImagePermission;
  const factory PermissionsEvent.requestReadStoragePermission() =
      _RequestReadStoragePermission;
  const factory PermissionsEvent.requestWriteStoragePermission() =
      _RequestWriteStoragePermission;
  const factory PermissionsEvent.requestAccessMediaLocationPermission() =
      _RequestAccessMediaLocationPermission;
  const factory PermissionsEvent.requestReadMediaImagePermission() =
      _RequestReadMediaImagePermission;
}
