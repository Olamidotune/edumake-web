
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class GrantedPermissionsScreen extends StatefulWidget {
  const GrantedPermissionsScreen({super.key});

  static const String routeName = 'granted-permissions/screen';

  @override
  // ignore: library_private_types_in_public_api
  _GrantedPermissionsScreenState createState() =>
      _GrantedPermissionsScreenState();
}

class _GrantedPermissionsScreenState extends State<GrantedPermissionsScreen> {
  List<String> grantedPermissions = [];

  @override
  void initState() {
    super.initState();
    _listGrantedPermissions();
  }

  Future<void> _listGrantedPermissions() async {
    // Get statuses of all permissions
    final statuses = await [
      Permission.camera,
      Permission.storage,
      Permission.photos,
      Permission.microphone,
      Permission.location,
      Permission.accessMediaLocation,
    ].request();

    // Filter for granted permissions
    final granted = statuses.entries
        .where((entry) => entry.value.isGranted)
        .map((entry) => entry.key.toString().split('.').last)
        .toList();

    setState(() {
      grantedPermissions = granted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Granted Permissions'),
      ),
      body: grantedPermissions.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: grantedPermissions.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.check, color: Colors.green),
                  title: Text(grantedPermissions[index]),
                );
              },
            ),
    );
  }
}