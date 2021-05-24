part of 'shared.dart';

Color mainColor = "542E71".toColor();
Color greyColor = "A8A8A8".toColor(); // supercharger

Widget loadingIndicator = SpinKitDoubleBounce(
  size: 45,
  color: mainColor,
);

const double defaultMargin = 16;

TextStyle blackTextFont1 = GoogleFonts.openSans()
    .copyWith(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500);

TextStyle blackTextFont2 = GoogleFonts.openSans()
    .copyWith(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);

TextStyle blackTextFont3 = GoogleFonts.openSans().copyWith(color: Colors.black);

TextStyle greyFontStyle = GoogleFonts.openSans().copyWith(color: greyColor);

TextStyle whiteFontStyle = GoogleFonts.openSans().copyWith(color: Colors.white);
