import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FontController extends GetxController {
  var typeselected = GoogleFonts.alexandria;
  int changetype = 0;
  changeTypeFonts() {
    typeselected = listTypeFonts[changetype];
    update();
  }

  var listTypeFonts = [
    GoogleFonts.alexandria,
    GoogleFonts.readexPro,
    GoogleFonts.cairo,
    GoogleFonts.ibmPlexSansArabic,
    GoogleFonts.almarai,
  ];
}
