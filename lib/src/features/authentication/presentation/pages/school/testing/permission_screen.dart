// import 'package:edumake_frontend/src/features/dashboard/presentation/bloc/bloc/permissions_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:permission_handler/permission_handler.dart';

// class PermissionsScreen extends StatelessWidget {
//   const PermissionsScreen({super.key});

//   static const String routeName = 'permissions/screen';

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => PermissionsBloc(),
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Permissions'),
//         ),
//         body: BlocConsumer<PermissionsBloc, PermissionsState>(
//           listener: (context, state) {
//             // Handle state changes like showing a dialog if permission is denied

//             if (state.isAccessMediaLocationEnabled == false) {
//               _showPermissionDialog(
//                 context,
//                 'Media Location Permission Denied',
//                 'Please enable access media location permission in app settings.',
//               );
//             }
//             if (state.isReadMediaImageEnabled == false) {
//               _showPermissionDialog(
//                 context,
//                 'Read Media Images Permission Denied',
//                 'Please enable read media images permission in app settings.',
//               );
//             }
//           },
//           builder: (context, state) {
//             return ListView(
//               padding: const EdgeInsets.all(16),
//               children: [
//                 _buildPermissionTile(
//                   context: context,
//                   title: 'Request Read Storage Permission',
//                   onPressed: () {
//                     context.read<PermissionsBloc>().add(
//                         const PermissionsEvent.requestReadStoragePermission());
//                   },
//                 ),
//                 _buildPermissionTile(
//                   context: context,
//                   title: 'Request Access Media Location Permission',
//                   onPressed: () {
//                     context.read<PermissionsBloc>().add(
//                           const PermissionsEvent
//                               .requestAccessMediaLocationPermission(),
//                         );
//                   },
//                 ),
//                 _buildPermissionTile(
//                   context: context,
//                   title: 'Request Read Media Images Permission',
//                   onPressed: () {
//                     context.read<PermissionsBloc>().add(
//                           const PermissionsEvent
//                               .requestReadMediaImagePermission(),
//                         );
//                   },
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }

//   Widget _buildPermissionTile({
//     required BuildContext context,
//     required String title,
//     required VoidCallback onPressed,
//   }) {
//     return Card(
//       child: ListTile(
//         title: Text(title),
//         trailing: ElevatedButton(
//           onPressed: onPressed,
//           child: const Text('Request'),
//         ),
//       ),
//     );
//   }

//   void _showPermissionDialog(
//       BuildContext context, String title, String message) {
//     showDialog<void>(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: Text(title),
//         content: Text(message),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.of(context).pop(),
//             child: const Text('OK'),
//           ),
//           const TextButton(
//             onPressed: openAppSettings,
//             child: Text('Open Settings'),
//           ),
//         ],
//       ),
//     );
//   }
// }
