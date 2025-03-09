import 'package:flutter/material.dart';
import 'package:shield_gpt/initial_file_upload_screen/model/file_model.dart';

enum UploadingStatus {
  idle,
  started,
  completed,
}

class InitialFileUploadScreenController extends ChangeNotifier {
  // NOTE - State for the selected files
  List<FileModel> selectedFile = [];
  UploadingStatus uploadingStatus = UploadingStatus.idle;

  // SECTION - Uploading status handler
  void setUploadingStatus(UploadingStatus status) {
    uploadingStatus = status;
    notifyListeners();
  }

  UploadingStatus getUploadingStatus() {
    return uploadingStatus;
  }

  String getButtonLabel() {
    switch (uploadingStatus) {
      case UploadingStatus.idle:
        return 'Upload';

      case UploadingStatus.started:
        return 'Uploading file';

      default:
        return 'Analyze';
    }
  }

  String getFormLabel() {
    switch (uploadingStatus) {
      case UploadingStatus.idle:
        return 'Please do upload the PCAP file to get analyzed';

      case UploadingStatus.started:
        return 'Please wait it might take some time';

      default:
        return 'Please proceed to analyze';
    }
  }

  //!SECTION
  // SECTION - File handler
  void addFileData(FileModel fileData) {
    selectedFile.add(fileData);
    notifyListeners();
  }

  void clearSelectedFiles() {
    selectedFile.clear();
    notifyListeners();
  }

  FileModel getSelectedFile() {
    return selectedFile.last;
  }

  int getSelectedFileCount() {
    return selectedFile.length;
  }
  //!SECTION
}
