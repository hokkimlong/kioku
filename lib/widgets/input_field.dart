import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String label;
  final Widget? endIcon;
  final bool? obscureText;
  final TextEditingController? controller;

  const InputField({
    Key? key,
    required this.label,
    this.obscureText,
    this.endIcon,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var inputBorderStyle = const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          color: Color.fromRGBO(236, 236, 236, 1),
          width: 1,
        ));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 2,
          ),
          child: Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 16,
          ),
          child: TextFormField(
            controller: controller,
            obscureText: obscureText ?? false,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 18),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(
                  right: 8,
                ),
                child: endIcon,
              ),
              enabledBorder: inputBorderStyle,
              focusedBorder: inputBorderStyle,
              hintText: label,
              hintStyle: const TextStyle(
                color: Color.fromRGBO(126, 126, 126, 1),
                fontSize: 16,
              ),
              filled: true,
              fillColor: const Color.fromRGBO(250, 250, 250, 1),
              hoverColor: const Color.fromRGBO(250, 250, 250, 1),
            ),
          ),
        ),
      ],
    );
  }
}
