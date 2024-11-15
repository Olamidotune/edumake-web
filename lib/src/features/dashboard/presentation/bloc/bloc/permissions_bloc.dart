import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:permission_handler/permission_handler.dart';

part 'permissions_event.dart';
part 'permissions_state.dart';
part 'permissions_bloc.freezed.dart';

class PermissionsBloc extends Bloc<PermissionsEvent, PermissionsState> {
  PermissionsBloc() : super(const _Initial()) {
    on<_Started>(_onStarted);
    on<_CheckReadStoragePermissionGranted>(
      _onCheckReadStoragePermissionGranted,
    );
    on<_CheckWriteStoragePermission>(_onCheckWriteStoragePermission);
    on<_CheckAccessMediaLocationPermission>(
      _onCheckAccessMediaLocationPermission,
    );
    on<_CheckReadMediaImagePermission>(_onCheckReadMediaImagePermission);
    on<_RequestReadStoragePermission>(_onRequestReadStoragePermission);
    on<_RequestWriteStoragePermission>(_onRequestWriteStoragePermission);
    on<_RequestAccessMediaLocationPermission>(
      _onRequestAccessMediaLocationPermission,
    );
    on<_RequestReadMediaImagePermission>(_onRequestReadMediaImagePermission);

    add(const _Started());
  }

  void _onStarted(_Started event, Emitter<PermissionsState> emit) async {
    add(const PermissionsEvent.checkReadStoragePermissionGranted());
    add(const PermissionsEvent.checkWriteStoragePermissionGranted());
    add(const PermissionsEvent.checkAccessMediaLocationPermissionGranted());
    add(const PermissionsEvent.checkReadMediaImagePermissionGranted());
  }

  void _onCheckReadStoragePermissionGranted(
    _CheckReadStoragePermissionGranted event,
    Emitter<PermissionsState> emit,
  ) async {
    emit(
      state.copyWith(
        isReadStoragePermissionGranted: await Permission.storage.isGranted,
      ),
    );
  }

  void _onCheckWriteStoragePermission(
    _CheckWriteStoragePermission event,
    Emitter<PermissionsState> emit,
  ) async {
    emit(
      state.copyWith(
        isWriteStoragePermissionGranted: await Permission.storage.isGranted,
      ),
    );
  }

  void _onCheckAccessMediaLocationPermission(
    _CheckAccessMediaLocationPermission event,
    Emitter<PermissionsState> emit,
  ) async {
    emit(
      state.copyWith(
        isAccessMediaLocationPermissionGranted:
            await Permission.accessMediaLocation.isGranted,
      ),
    );
  }

  void _onCheckReadMediaImagePermission(
    _CheckReadMediaImagePermission event,
    Emitter<PermissionsState> emit,
  ) async {
    emit(
      state.copyWith(
        isReadMediaImagePermissionGranted:
            await Permission.mediaLibrary.isGranted,
      ),
    );
  }

  void _onRequestReadStoragePermission(
    _RequestReadStoragePermission event,
    Emitter<PermissionsState> emit,
  ) async {
    final status = await Permission.storage.request();
    if (status.isDenied) {
      await openAppSettings();
    }
    emit(
      state.copyWith(
        isReadStoragePermissionGranted: status.isGranted,
      ),
    );
  }

  void _onRequestWriteStoragePermission(
    _RequestWriteStoragePermission event,
    Emitter<PermissionsState> emit,
  ) async {
    final status = await Permission.storage.request();
    if (status.isDenied) {
      await openAppSettings();
    }
    emit(
      state.copyWith(
        isWriteStoragePermissionGranted: status.isGranted,
      ),
    );
  }

  void _onRequestAccessMediaLocationPermission(
    _RequestAccessMediaLocationPermission event,
    Emitter<PermissionsState> emit,
  ) async {
    final status = await Permission.accessMediaLocation.request();
    if (status.isDenied) {
      await openAppSettings();
    }
    emit(
      state.copyWith(
        isAccessMediaLocationPermissionGranted: status.isGranted,
      ),
    );
  }

  void _onRequestReadMediaImagePermission(
    _RequestReadMediaImagePermission event,
    Emitter<PermissionsState> emit,
  ) async {
    final status = await Permission.mediaLibrary.request();
    if (status.isDenied) {
      await openAppSettings();
    }
    emit(
      state.copyWith(
        isReadMediaImagePermissionGranted: status.isGranted,
      ),
    );
  }
}
