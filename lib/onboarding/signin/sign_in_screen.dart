import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/onboarding/onboarding_store.dart';
import 'package:flutter_meditation_app/onboarding/signup/create_account.dart';
import 'package:flutter_meditation_app/onboarding/welcome/welcome_screen.dart';
import 'package:flutter_meditation_app/values/assets.dart';
import 'package:flutter_meditation_app/values/colors.dart';
import 'package:flutter_meditation_app/widgets/custom_text_field.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final onBoardingStore = OnboardingStore();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SvgPicture.asset(
              Svgs.imgCreateScreenBg,
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_outlined,
                        color: BaseColors.appBlackColor,
                      ),
                    ),
                  ),
                  Text(
                    'Welcome Back!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: BaseColors.appBlackColor,
                      fontSize: 28,
                    ),
                  ),
                  const SizedBox(height: 32),
                  FaceBookButton(),
                  const SizedBox(height: 32),
                  GoogleButton(),
                  const SizedBox(height: 32),
                  Text(
                    'OR LOG IN WITH EMAIL',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFA1A4B2),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 32),
                  const SizedBox(height: 16),
                  Observer(
                    builder: (_) => CustomTextField(
                      hintText: 'email',
                      suffixIcon: onBoardingStore.email != null &&
                              onBoardingStore.email.isNotEmpty
                          ? IconButton(
                              icon: SvgPicture.asset(Svgs.icGreenTick),
                              onPressed: null,
                            )
                          : null,
                      onChanged: (value) {
                        onBoardingStore.email = value;
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  Observer(
                    builder: (_) => CustomTextField(
                      hintText: 'password',
                      suffixIcon: IconButton(
                        icon: onBoardingStore.obscurePassword
                            ? Icon(Icons.remove_red_eye_outlined)
                            : SvgPicture.asset(Svgs.icCloseEye),
                        onPressed: () {
                          onBoardingStore.obscurePassword =
                              !onBoardingStore.obscurePassword;
                        },
                      ),
                      obscure: onBoardingStore.obscurePassword,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: MaterialButton(
                      color: BaseColors.accentColor,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => WelcomeScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'LOGIN',
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'ALREADY HAVE AN ACCOUNT?',
                        style: const TextStyle(
                          color: const Color(0xFFA1A4B2),
                          fontSize: 14,
                        ),
                        children: [
                          TextSpan(
                            text: ' SIGN UP',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (_) => CreateAccount(),
                                  ),
                                );
                              },
                            style: const TextStyle(
                              color: const Color(0xFF8E97FD),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
