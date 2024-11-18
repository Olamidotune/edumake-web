import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:permission_handler/permission_handler.dart';

part 'permissions_bloc.freezed.dart';
part 'permissions_event.dart';
part 'permissions_state.dart';

class PermissionsBloc extends Bloc<PermissionsEvent, PermissionsState> {
  PermissionsBloc() : super(const _Initial()) {
    on<_Initialized>(_initialized);
    on<_CheckReadStoragePermission>(_checkReadStoragePermission);
    on<_CheckAccessMediaLocationPermission>(
        _checkAccessMediaLocationPermission,);
    on<_CheckReadMediaImagePermission>(_checkReadMediaImagePermission);
    on<_RequestReadStoragePermission>(_requestReadStoragePermission);
    on<_RequestPhotoLibraryAccess>(_requestPhotoLibaryAccess);
    on<_RequestReadMediaImagePermission>(_requestReadMediaImagePermission);
    on<_CheckNotificationPermission>(_checkNotificationPermission);
    on<_RequestNotificationPermission>(_requestNotificationPermission);

    add(const PermissionsEvent.initialized());
  }

  void _initialized(_Initialized event, Emitter<PermissionsState> emit) async {
    final isStorageGranted = await Permission.storage.isGranted;
    final isMediaLocationGranted =
        await Permission.accessMediaLocation.isGranted;
    final isMediaImageGranted = await Permission.photos.isGranted;
    final isNotificationGranted = await Permission.notification.isGranted;

    emit(
      state.copyWith(
        isReadStorageEnabled: isStorageGranted,
        isPhotoLibraryEnabled: isMediaLocationGranted,
        isReadMediaImageEnabled: isMediaImageGranted,
        isNotificationEnabled: isNotificationGranted,
      ),
    );
  }

  void _checkReadStoragePermission(
    _CheckReadStoragePermission event,
    Emitter<PermissionsState> emit,
  ) async {
    var isGranted = await Permission.storage.isGranted;
    if (!isGranted) {
      final status = await Permission.storage.request();
      isGranted = status.isGranted;
    }
    emit(state.copyWith(isReadStorageEnabled: isGranted));
  }

  void _requestReadStoragePermission(
    _RequestReadStoragePermission event,
    Emitter<PermissionsState> emit,
  ) async {
    final isGranted = await Permission.storage.request().isGranted;
    emit(state.copyWith(isReadStorageEnabled: isGranted));
    if (!isGranted) {
      await openAppSettings();
    }
  }

  void _checkAccessMediaLocationPermission(
    _CheckAccessMediaLocationPermission event,
    Emitter<PermissionsState> emit,
  ) async {
    emit(
      state.copyWith(
        isPhotoLibraryEnabled: await Permission.accessMediaLocation.isGranted,
      ),
    );
  }

  Future<void> _requestPhotoLibaryAccess(
    _RequestPhotoLibraryAccess event,
    Emitter<PermissionsState> emit,
  ) async {
    // This will trigger the system permission dialog
    final status = await Permission.photos.request();
    emit(state.copyWith(isPhotoLibraryEnabled: status.isGranted));
  }

  void _checkReadMediaImagePermission(
    _CheckReadMediaImagePermission event,
    Emitter<PermissionsState> emit,
  ) async {
    emit(
      state.copyWith(
        isReadMediaImageEnabled: await Permission.photos.isGranted,
      ),
    );
  }

  void _requestReadMediaImagePermission(
    _RequestReadMediaImagePermission event,
    Emitter<PermissionsState> emit,
  ) async {
    emit(
      state.copyWith(
        isPhotoLibraryEnabled: await Permission.photos.request().isGranted,
      ),
    );
  }

  void _checkNotificationPermission(
    _CheckNotificationPermission event,
    Emitter<PermissionsState> emit,
  ) async {
    emit(
      state.copyWith(
        isNotificationEnabled: await Permission.notification.isGranted,
      ),
    );
  }

  void _requestNotificationPermission(
    _RequestNotificationPermission event,
    Emitter<PermissionsState> emit,
  ) async {
    emit(
      state.copyWith(
        isNotificationEnabled:
            await Permission.notification.request().isGranted,
      ),
    );
  }
}
