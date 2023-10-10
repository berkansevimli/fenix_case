import 'package:fenix_interview/ui/size_config.dart';
import 'package:flutter/material.dart';

const kIconColor = Color(0xFFCD6D7B);

const kPrimaryColor = Color(0xFFbdd94e);
const kSecondaryColor = Color(0xFF499d5b);
const kBorderColor = Color(0xFFBABABA);


const kBackgroundGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [kPrimaryColor, kSecondaryColor],
);

const kPrimaryTextColor = Color(0xFF000000);
const kSecondaryTextColor = Color(0xFF545454);
const defaultPadding = 16.0;

const kUnselectedLabelColor = Color(0xFFB8A9BA);
const kAuthBackground = Color(0xFFf7d1d3);

const kPassiveButtonColor = Color(0xFFEBDCDC);
const kActiveButtonColor = Color(0xFFCD6D7B);

const kDarkBackgroundColor = Color(0xFF000000);
const kCardColor = Color(0xFF111111);

const kPrimaryLightColor = Color(0xFFFFECDF);

const kThirdLightColor = Color(0xFFf0f8ff);
const kSecondaryLightColor = Color(0xFFf5f5f5);
const kPrimaryWhiteColor = Color(0xFFF5F6F9);
const yellow = Color(0xFFFADC4C);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);

const kTextColor = Colors.white;
const kTextDarkColor = Color(0xFF111111);
const kBlackColor = Colors.black54;
const kWhiteBackground = Color(0xFFFFF8F3);
const kAnimationDuration = Duration(milliseconds: 200);
const kDefaultPadding = 20.0;

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  height: 1.5,
);
final headingStyle2 = TextStyle(
  fontSize: getProportionateScreenWidth(12),
  fontWeight: FontWeight.bold,
  color: kPrimaryColor,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);
const kErrorColor = Color(0xFFF03738);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9._-]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please  Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kUserNamelNullError = "Please Enter your username";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
const String kUsernameNullError = "Please enter your username";
const String kShortUsernameError = "Username have to be least 3 characters";
const String kNotAvailableUsername = "This username already in use";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: const BorderSide(color: kTextColor),
  );
}
