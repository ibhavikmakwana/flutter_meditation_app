import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/onboarding/signin/sign_in_screen.dart';
import 'package:flutter_meditation_app/onboarding/signup/create_account.dart';
import 'package:flutter_meditation_app/values/assets.dart';
import 'package:flutter_meditation_app/values/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInSignUpEntryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            Svgs.imgSignUpSignInBG,
            alignment: Alignment.topCenter,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 16),
                  AppNameHeader(),
                  SizedBox(height: 64),
                  SvgPicture.asset(Svgs.imgEntryScreenIllustration),
                  Spacer(),
                  Text(
                    'We are what we do',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: BaseColors.appBlackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Thousand of people are using silent moon for smalls meditation',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: BaseColors.mediumLightShadeBlue,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Spacer(),
                  MaterialButton(
                    color: BaseColors.accentColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(38),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => CreateAccount(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          color: BaseColors.lightBlueMagenta,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'ALREADY HAVE AN ACCOUNT?',
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: BaseColors.mediumLightShadeBlue,
                      ),
                      children: [
                        TextSpan(
                          text: ' LOG IN',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => SignInScreen(),
                                ),
                              );
                            },
                          style: const TextStyle(
                            color: BaseColors.accentColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AppNameHeader extends StatelessWidget {
  const AppNameHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Silent',
          style: const TextStyle(
            color: BaseColors.appBlackColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 12),
        SvgPicture.asset(Svgs.icAppIcon),
        SizedBox(width: 12),
        Text(
          'Moon',
          style: const TextStyle(
            color: BaseColors.appBlackColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
