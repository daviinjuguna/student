import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:student/core/util/constant.dart';
import 'package:student/features/domain/entities/pdf.dart';

class PdfViewPage extends StatelessWidget {
  final Pdf _pdf;

  const PdfViewPage({Key? key, required Pdf pdf})
      : _pdf = pdf,
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBlackColor,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "${_pdf.name.trim().toUpperCase()}",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: const PDF().fromUrl(
        "$FILE_URL${_pdf.pdfDoc}",
        placeholder: (double progress) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Fetching pdf",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 5),
              CircularProgressIndicator(
                value: progress,
                valueColor: AlwaysStoppedAnimation(kBlackColor),
              )
              // Text(
              //   '$progress %',
              //   style: TextStyle(
              //     fontSize: 18,
              //     fontWeight: FontWeight.w600,
              //     color: kYellowColor,
              //   ),
              // ),
            ],
          ),
        ),
        errorWidget: (dynamic error) => Center(child: Text(error.toString())),
      ),
    );
  }
}
