import 'package:flutter/material.dart';
import 'package:kioku/widgets/input_field.dart';

class PasswordField extends StatefulWidget {
  final String label;

  const PasswordField({Key? key, required this.label}) : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return InputField(
      label: "Password",
      obscureText: !isVisible,
      endIcon: IconButton(
        hoverColor: Colors.white,
        icon: Icon(isVisible ? Icons.visibility_off : Icons.visibility),
        onPressed: () {
          setState(() {
            isVisible = !isVisible;
          });
        },
      ),
    );
  }
}
