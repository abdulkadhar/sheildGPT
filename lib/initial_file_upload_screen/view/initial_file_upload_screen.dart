import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:shield_gpt/global_widgets/SGPT_button.dart';
import 'package:shield_gpt/initial_file_upload_screen/controller/initial_file_upload_screen_controller.dart';
import 'package:shield_gpt/initial_file_upload_screen/model/file_model.dart';
import 'package:shield_gpt/initial_file_upload_screen/widget/file_upload_container.dart';

class InitialFileUploadScreen extends StatelessWidget {
  const InitialFileUploadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Consumer<InitialFileUploadScreenController>(builder: (
        context,
        initialFileUploadScreenController,
        child,
      ) {
        return Stack(
          children: [
            Center(
              child: DottedBorder(
                dashPattern: const [15, 5],
                color: Colors.white,
                borderType: BorderType.RRect,
                radius: const Radius.circular(12),
                child: Container(
                  // height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.height * 0.45,
                  decoration: BoxDecoration(
                    color: const Color(0XFF202020),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Lottie.asset(
                        initialFileUploadScreenController
                                    .getUploadingStatus() ==
                                UploadingStatus.completed
                            ? 'assets/lottie/completed-animation.json'
                            : 'assets/lottie/file_upload_animation.json',
                        height: 200,
                        width: 200,
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          initialFileUploadScreenController.getFormLabel(),
                          textAlign: TextAlign.center,
                          style: GoogleFonts.quicksand(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // SECTION - Uploading file status
                      if (initialFileUploadScreenController
                              .getSelectedFileCount() >
                          0)
                        FileUploadContainer(
                          fileData: initialFileUploadScreenController
                              .getSelectedFile(),
                        ),
                      const SizedBox(height: 20),
                      SGPTButton(
                        label:
                            initialFileUploadScreenController.getButtonLabel(),
                        onPress: () {
                          // NOTE toggling the value of the status
                          if (initialFileUploadScreenController
                                  .getUploadingStatus() ==
                              UploadingStatus.completed) {
                            initialFileUploadScreenController
                                .clearSelectedFiles();
                          }
                          // NOTE changing the uploading status
                          if (initialFileUploadScreenController
                                      .getUploadingStatus() ==
                                  UploadingStatus.idle ||
                              initialFileUploadScreenController
                                      .getUploadingStatus() ==
                                  UploadingStatus.completed) {
                            initialFileUploadScreenController
                                .setUploadingStatus(
                              UploadingStatus.started,
                            );
                          } else if (initialFileUploadScreenController
                                  .getUploadingStatus() ==
                              UploadingStatus.started) {
                            initialFileUploadScreenController
                                .setUploadingStatus(
                              UploadingStatus.completed,
                            );
                          } else {
                            initialFileUploadScreenController
                                .setUploadingStatus(
                              UploadingStatus.idle,
                            );
                          }
                          if (initialFileUploadScreenController
                                  .getUploadingStatus() ==
                              UploadingStatus.started) {
                            initialFileUploadScreenController.addFileData(
                              FileModel(
                                fileName: 'linked-1.pcap',
                                fileSize: 100,
                              ),
                            );
                          }
                        },
                        isLoading: initialFileUploadScreenController
                                .getUploadingStatus() ==
                            UploadingStatus.started,
                        loadingLabel: 'Uploading file',
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ),
            // SECTION - Logo Section
            Padding(
              padding: const EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/ripple_logo_white.png',
                      height: 40,
                      width: 60,
                    ),
                    Text(
                      "Shield GPT",
                      style: GoogleFonts.quicksand(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}
