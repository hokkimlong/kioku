import 'package:flutter/material.dart';
import 'package:kioku/screens/register_screen.dart';
import 'package:kioku/widgets/gradient_button.dart';
import 'package:kioku/widgets/input_field.dart';
import 'package:kioku/widgets/link_button.dart';
import 'package:kioku/widgets/password_field.dart';
import 'package:kioku/widgets/slide_right.dart';
import 'package:kioku/widgets/title_with_description.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController textController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
              splashRadius: 24,
              color: Colors.black,
              icon: const Icon(Icons.arrow_back),
              onPressed: () {},
            )),
        body: Center(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width > 430
                  ? 400
                  : MediaQuery.of(context).size.width * 0.85,
            ),
            child: Form(
              key: _formKey,
              child: Column(children: [
                const TitleWithDescription(
                    title: "Login", description: "Connect, bond, and enjoy!"),
                InputField(
                  label: "Email",
                  controller: textController,
                ),
                const PasswordField(label: "Password"),
                GradientButton(
                  label: "Login",
                  onPressed: () {},
                ),
                const SizedBox(height: 22),
                const LinkButton(value: "Forgot Password?"),
                const Spacer(flex: 1),
                GradientButton(
                  label: "Create account",
                  onPressed: () {
                    Navigator.push(
                        context, SlideRightRoute(page: const RegisterScreen()));
                  },
                  outlined: true,
                ),
                const SizedBox(
                  height: 22,
                )
              ]),
            ),
          ),
        ));
  }
}
