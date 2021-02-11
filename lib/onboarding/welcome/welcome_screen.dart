import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/onboarding/sign_in_sign_up_entry_screen.dart';
import 'package:flutter_meditation_app/values/assets.dart';
import 'package:flutter_meditation_app/widgets/custom_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8E97FD),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),
            AppNameHeader(),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Hi Afsar, Welcome\n',
                  style: const TextStyle(
                    color: Color(0xFFFFECCC),
                    fontSize: 30,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: 'to Silent Moon',
                      style: const TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Explore the app, Find some peace of mind to prepare for meditation.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFEBEAEC),
                ),
              ),
            ),
            const Spacer(),
            SvgPicture.asset(Svgs.imgWelcomeIllustration),
            const Spacer(),
            CustomButton(
              text: 'GET STARTED',
              color: Color(0xFFEBEAEC),
              onPressed: () {},
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
