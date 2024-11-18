part of 'permissions_bloc.dart';

@freezed
class PermissionsEvent with _$PermissionsEvent {
  const factory PermissionsEvent.initialized() = _Initialized;
  const factory PermissionsEvent.checkReadStoragePermission() =
      _CheckReadStoragePermission;
  const factory PermissionsEvent.requestReadStoragePermission() =
      _RequestReadStoragePermission;
  const factory PermissionsEvent.checkAccessMediaLocationPermission() =
      _CheckAccessMediaLocationPermission;
 const factory PermissionsEvent.requestPhotoLibraryAccess() = _RequestPhotoLibraryAccess;
  const factory PermissionsEvent.checkReadMediaImagePermission() =
      _CheckReadMediaImagePermission;
  const factory PermissionsEvent.requestReadMediaImagePermission() =
      _RequestReadMediaImagePermission;
  const factory PermissionsEvent.checkNotificationPermission() =
      _CheckNotificationPermission;
  const factory PermissionsEvent.requestNotificationPermission() =
      _RequestNotificationPermission;
}
