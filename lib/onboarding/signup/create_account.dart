import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/values/assets.dart';
import 'package:flutter_meditation_app/values/colors.dart';
import 'package:flutter_meditation_app/widgets/custom_text_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    'Create your account',
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
                  CustomTextField(
                    hintText: 'full name',
                    suffixIcon: IconButton(
                      icon: SvgPicture.asset(Svgs.icGreenTick),
                      onPressed: null,
                    ),
                  ),
                  const SizedBox(height: 16),
                  CustomTextField(
                    hintText: 'email',
                    suffixIcon: IconButton(
                      icon: SvgPicture.asset(Svgs.icGreenTick),
                      onPressed: null,
                    ),
                  ),
                  const SizedBox(height: 16),
                  CustomTextField(
                    hintText: 'password',
                    suffixIcon: IconButton(
                      icon: SvgPicture.asset(Svgs.icCloseEye),
                      onPressed: () {},
                    ),
                    obscure: true,
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'i have read the Privacy Policy',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFA1A4B2),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                      ],
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
                      onPressed: () {},
                      child: Text(
                        'GET STARTED',
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FaceBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: MaterialButton(
        onPressed: () {},
        color: BaseColors.facebookButtonColor,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Svgs.icFacebook),
            const SizedBox(width: 16),
            Text(
              'CONTINUE WITH FACEBOOK',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFFF6F1FB),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GoogleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: OutlineButton(
        onPressed: () {},
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        color: BaseColors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Svgs.icGoogle),
            const SizedBox(width: 16),
            Text(
              'CONTINUE WITH FACEBOOK',
              style: TextStyle(fontSize: 14, color: BaseColors.appBlackColor),
            ),
          ],
        ),
      ),
    );
  }
}
