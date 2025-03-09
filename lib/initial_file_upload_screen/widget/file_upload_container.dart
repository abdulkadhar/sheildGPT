import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shield_gpt/initial_file_upload_screen/model/file_model.dart';

class FileUploadContainer extends StatelessWidget {
  final FileModel fileData;
  const FileUploadContainer({
    super.key,
    required this.fileData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFF282828),
        border: Border.all(
          color: Colors.white,
          width: 0.3,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          // NOTE - File name goes here
          const Icon(
            Icons.cloud_upload_sharp,
            color: Colors.white,
            size: 12,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            'File name',
            style: GoogleFonts.quicksand(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
          Spacer(),
          // NOTE file Size goes here
          Text(
            '949 kb',
            style: GoogleFonts.quicksand(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
