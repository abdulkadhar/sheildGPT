import 'package:flutter/material.dart';
import 'package:shield_gpt/initial_file_upload_screen/model/file_model.dart';

class InitialFileUploadScreenController extends ChangeNotifier {
  // NOTE - State for the selected files
  List<FileModel> selectedFile = [];
  bool isUploading = false;

  // SECTION - Uploading status handler
  void setUploadingStatus(bool status) {
    isUploading = status;
    notifyListeners();
  }

  bool getUploadingStatus() {
    return isUploading;
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
  //!SECTION
}
