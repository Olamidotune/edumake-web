import 'dart:io';

import 'package:edumake_frontend/src/shared/services/toast_service.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class FileDownloader {
  // Function to check and request storage permissions
  Future<bool> _requestStoragePermission() async {
    if (Platform.isAndroid) {
      final status = await Permission.storage.status;
      if (status.isDenied) {
        final result = await Permission.storage.request();
        return result.isGranted;
      }
      return status.isGranted;
    }
    return true; // For iOS, return true as we'll use app documents directory
  }

  // Function to get the download directory
  Future<Directory?> _getDownloadDirectory() async {
    if (Platform.isAndroid) {
      // For Android 10 (API 29) and below
      if (await _requestStoragePermission()) {
        return Directory('/storage/emulated/0/Download');
      }
      return null;
    } else {
      // For iOS, use the app's documents directory
      return getApplicationDocumentsDirectory();
    }
  }

  Future<void> downloadCSV(String csvContent, {String? customFileName}) async {
    try {
      final directory = await _getDownloadDirectory();

      if (directory == null) {
        throw Exception('Storage permission denied');
      }

      final fileName = customFileName ?? 'edumake_csv_template.csv';
      final file = File('${directory.path}/$fileName');

      await file.writeAsString(csvContent);

      ToastService.toast(
        'File downloaded successfully to Downloads folder',
      );
    } catch (e) {
      debugPrint('Error downloading file: $e');
      ToastService.toast(
        'Failed to download file. Please check app permissions.',
        ToastType.error,
      );
    }
  }
}
