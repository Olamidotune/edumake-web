import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:edumake_frontend/config/pref_keys.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/school_models/school_model.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/user.dart';
import 'package:edumake_frontend/src/shared/services/persistence_services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// This class is used to manage the authentication services
class AuthServices {
  factory AuthServices() => _manager;

  AuthServices._internal();
  static final AuthServices _manager = AuthServices._internal();

  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  Future<bool> isSignedIn() async {
    return await _manager._storage.read(key: 'prefToken') != null;
  }

  Future<String?> getToken() async {
    return _manager._storage.read(key: prefToken);
  }

  Future<String?> getSchoolID() async {
    return _manager._storage.read(key: prefSchoolID);
  }

  Future<User> getUser() async {
    final user = User(
      await _manager._storage.read(key: prefLastName) ?? '',
      await _manager._storage.read(key: prefEmail) ?? '',
      await _manager._storage.read(key: prefPhoneNumber) ?? '',
      await _manager._storage.read(key: prefFirstName) ?? '',
      await _manager._storage.read(key: prefId) ?? '',
      SchoolModel(
        await _manager._storage.read(key: prefAdmin) ?? '',
        await _manager._storage.read(key: prefSchoolName) ?? '',
        await _manager._storage.read(key: prefSchoolAddress) ?? '',
        await _manager._storage.read(key: prefSchoolEmail) ?? '',
        await _manager._storage.read(key: prefSchoolType) ?? '',
        await _manager._storage.read(key: prefClassNumberRange) ?? '',
        await _manager._storage.read(key: prefStudentNumberRange) ?? '',
        await _manager._storage.read(key: prefTeacherNumberRange) ?? '',
        await _manager._storage.read(key: prefSchoolID) ?? '',
      ),
    )
      ..firstName = await _manager._storage.read(key: prefFirstName) ?? ''
      ..lastName = (await _manager._storage.read(key: prefLastName)) ?? ''
      ..id = (await _manager._storage.read(key: prefId)) ?? ''
      ..email = (await _manager._storage.read(key: prefEmail)) ?? ''
      ..phoneNumber =
          (await _manager._storage.read(key: prefPhoneNumber)) ?? '';
    return user;
  }

  Future<void> setSchoolID(String schoolID) async {
    await _manager._storage.write(key: prefSchoolID, value: schoolID);
  }

  Future<void> setSignedIn(
    String? token,
    User user,
    SchoolModel? schoolModel,
  ) async {
    //if token is null, check if token is stored in the storage
    if (token == null) {
      if ((await _manager._storage.read(key: prefToken)) == null) {
        throw Exception('Token cannot be null');
      }
    }

    //if token is not null, store the token in the storage
    if (token != null) {
      await _manager._storage.write(key: prefToken, value: token);
      await PersistenceServices().saveHasAuthenticatedBefore(true);
    }

    //store the user details in the storage
    await _manager._storage.write(key: prefEmail, value: user.email);
    await _manager._storage
        .write(key: prefPhoneNumber, value: user.phoneNumber);
    await _manager._storage.write(key: prefFirstName, value: user.firstName);
    await _manager._storage.write(key: prefLastName, value: user.lastName);
    await _manager._storage.write(key: prefId, value: user.id.toString());
  }

  // this method is used to update the token in the storage when the token is refreshed
  Future<void> updateToken(String token) async {
    await _manager._storage.write(key: prefToken, value: token);
  }

  Future<void> setSchoolModel(SchoolModel schoolModel) async {
    await _manager._storage.write(key: prefAdmin, value: schoolModel.admin);
    await _manager._storage
        .write(key: prefSchoolName, value: schoolModel.schoolName);
    await _manager._storage
        .write(key: prefSchoolAddress, value: schoolModel.schoolAddress);
    await _manager._storage
        .write(key: prefSchoolEmail, value: schoolModel.schoolEmail);
    await _manager._storage
        .write(key: prefSchoolType, value: schoolModel.schoolType);
    await _manager._storage
        .write(key: prefClassNumberRange, value: schoolModel.classNumberRange);
    await _manager._storage.write(
      key: prefStudentNumberRange,
      value: schoolModel.studentNumberRange,
    );
    await _manager._storage.write(
      key: prefTeacherNumberRange,
      value: schoolModel.teacherNumberRange,
    );
    await _manager._storage
        .write(key: prefSchoolID, value: schoolModel.schoolID);
  }

  Future<void> signOut() async {
    await _manager._storage.deleteAll();
  }
}

Future<String?> getDeviceId() async {
  final deviceInfo = DeviceInfoPlugin();
  if (Platform.isAndroid) {
    final androidInfo = await deviceInfo.androidInfo;
    return androidInfo.id; // Returns unique Android device ID
  } else if (Platform.isIOS) {
    final iosInfo = await deviceInfo.iosInfo;
    return iosInfo.identifierForVendor; // Unique ID for iOS
  }
  return null;
}
