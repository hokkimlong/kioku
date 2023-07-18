import 'package:flutter/material.dart';
import 'package:kioku/widgets/gradient_button.dart';
import 'package:kioku/widgets/input_field.dart';
import 'package:kioku/widgets/link_button.dart';
import 'package:kioku/widgets/password_field.dart';
import 'package:kioku/widgets/title_with_description.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: 400, minWidth: 100),
              child: Column(children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.back_hand)),
                const SizedBox(height: 60),
                const TitleWithDescription(
                    title: "Register",
                    description: "Connect, bond, and enjoy!"),
                const SizedBox(height: 18),
                const InputField(label: "Email"),
                const SizedBox(height: 18),
                const PasswordField(label: "Password"),
                const SizedBox(height: 22),
                // GradientButton(
                //   onPressed: () {
                //     print("object");
                //   },
                // ),
                const SizedBox(height: 22),
                const LinkButton(value: "Forgot Password?"),
                const Spacer(flex: 1),
                // GradientButton(
                //   onPressed: () {
                //     print("");
                //   },
                //   outlined: true,
                // ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
