// import 'dart:convert';
// import 'dart:io';

// import 'package:edumake_frontend/src/shared/services/logging_helper.dart';
// import 'package:edumake_frontend/src/shared/services/toast_service.dart';
// import 'package:flutter/material.dart';

// import 'package:http_parser/http_parser.dart';
// import 'package:image_picker/image_picker.dart';

// import 'package:permission_handler/permission_handler.dart';

// class EventService {
//   EventService({required this.baseUrl});
//   final String baseUrl;

//   Future<void> editEvent({
//     required BuildContext context,
//     required List<String> selectedClassIds,
//     required List<String> associatedEvents,
//     required String eventId,
//     required String schoolId,
//     required String token,
//     required TextEditingController eventTitleController,
//     required TextEditingController eventDateController,
//     required TextEditingController eventDetailsController,
//     required File? selectedImage,
//   }) async {
//     final url = '$baseUrl/api/v1/sch/events/$schoolId/$eventId';

//     try {
//       final request = http.MultipartRequest('PUT', Uri.parse(url));

//       request.headers.addAll({
//         'Authorization': token,
//         'Accept': 'application/json',
//       });

//       request.fields['title'] = eventTitleController.text;
//       associatedEvents.asMap().forEach((index, eventId) {
//         request.fields['associatedEvents[$index]'] = eventId;
//       });
//       request.fields['date'] = eventDateController.text;
//       request.fields['details'] = eventDetailsController.text;
//       selectedClassIds.asMap().forEach((index, classId) {
//         request.fields['classes[$index]'] = classId;
//       });

//       if (selectedImage != null) {
//         request.files.add(
//           await http.MultipartFile.fromPath(
//             'eventImage',
//             selectedImage.path,
//             filename: path.basename(selectedImage.path),
//             contentType: MediaType(
//               'image',
//               'jpeg',
//             ),
//           ),
//         );
//       }

//       logInfo('Request fields: ${request.fields}');

//       final response = await request.send();
//       final responseBody = await response.stream.bytesToString();
//       logInfo('responseBody: $responseBody');

//       final responseJson = jsonDecode(responseBody);

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         final successMessage = responseJson['message'];
//         logInfo(responseBody);
//         ToastService.toast(successMessage.toString());
//         Navigator.of(context).pop();
//       } else {
//         final errorMessage =
//             responseJson['message'] ?? 'An unknown error occurred';
//         ToastService.toast(
//           errorMessage.toString(),
//           ToastType.error,
//         );
//       }
//     } catch (error, trace) {
//       logError(error, trace);
//       ToastService.toast(
//         'Something went wrong.',
//         ToastType.error,
//       );
//     }
//   }

//   Future<File?> pickImageFromGallery() async {
//     final storageStatus = await Permission.storage.request();
//     if (storageStatus.isDenied) {
//       ToastService.toast(
//         'Storage permission is required to upload an image.',
//         ToastType.error,
//       );
//       return null;
//     }
//     final returnedImage =
//         await ImagePicker().pickImage(source: ImageSource.gallery);

//     if (returnedImage == null) {
//       ToastService.toast(
//         'No Image Was Selected',
//         ToastType.error,
//       );
//       return null;
//     }

//     ToastService.toast(
//       'Image Selected Successfully',
//     );
//     return File(returnedImage.path);
//   }

//   Future<void> selectDate(
//       BuildContext context, TextEditingController dateController) async {
//     final picked = await showDatePicker(
//       context: context,
//       firstDate: DateTime(2025),
//       lastDate: DateTime(4100),
//       initialDate: DateTime.now(),
//     );
//     if (picked != null) {
//       dateController.text = picked.toString().split(' ')[0];
//     }
//   }
// }
