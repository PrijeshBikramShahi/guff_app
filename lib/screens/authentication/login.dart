import 'package:flutter/material.dart';
import 'package:guff/components/shared/logo_container.dart';
import 'package:guff/components/shared/my_button.dart';
import 'package:guff/components/shared/my_textfield.dart';
import 'package:guff/style_models/button_styles.dart';
import 'package:guff/style_models/font_styles.dart';
import 'package:guff/style_models/textfield_styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LogoContainer(),
            CenterContainer(),
            BottomContainer(),
          ],
        ),
      ),
    );
  }
}

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Don't have an account? ",
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(
              text: "Sign Up",
              style: TextStyle(color: Colors.deepOrangeAccent),
            ),
          ],
        ),
      ),
    );
  }
}

class CenterContainer extends StatelessWidget {
  const CenterContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Wrap(
            children: [
              MyTextField(
                textInputType: TextInputType.emailAddress,
                inputDecoration: TextFieldStyles.emailStyle,
              ),
              MyTextField(
                textInputType: TextInputType.visiblePassword,
                inputDecoration: TextFieldStyles.passwordStyle,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0)
                .copyWith(right: 40, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forgot your password?",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ],
            ),
          ),
          MyButton(
            decoration: ButtonStyles.fillColor,
            buttonName: "Login",
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
            buttonTextStyle: Fonts.buttonLight,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade600,
                  ),
                  height: 2,
                  width: 150,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "OR",
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey.shade600,
                  ),
                  height: 2,
                  width: 150,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Wrap(
              spacing: 70,
              children: [
                Icon(
                  Icons.face,
                  size: 60,
                ),
                Icon(
                  Icons.face,
                  size: 60,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
