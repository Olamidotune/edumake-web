import 'package:edumake_frontend/config/pref_keys.dart';
import 'package:edumake_frontend/src/features/authentication/api/models/user.dart';
import 'package:edumake_frontend/src/shared/services/presistence_services.dart';
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
    return _manager._storage.read(key: 'prefToken');
  }

  Future<User> getUser() async {
    final user = User(
      await _manager._storage.read(key: prefLastName) ?? '',
      await _manager._storage.read(key: prefEmail) ?? '',
      await _manager._storage.read(key: prefPhoneNumber) ?? '',
    )
      ..firstName = await _manager._storage.read(key: 'prefFirstName')
      ..lastName = (await _manager._storage.read(key: 'prefLastName')) ?? ''
      ..id = (await _manager._storage.read(key: 'prefId')) ?? '';

    return user;
  }

  Future<void> setSignedIn(String? token, User user) async {
    //if token is null, check if token is stored in the storage
    if (token == null) {
      if ((await _manager._storage.read(key: prefToken)) == null) {
        throw Exception('Token cannot be null');
      }
    }

    //if token is not null, store the token in the storage
    if (token != null) {
      await _manager._storage.write(key: prefToken, value: token);
      await PresistenceServices().saveHasAuthenticatedBefore(true);
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

  Future<void> signOut() async {
    await _manager._storage.deleteAll();
  }
}
