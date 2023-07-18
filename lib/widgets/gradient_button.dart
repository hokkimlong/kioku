import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class GradientButton extends StatelessWidget {
  final Function onPressed;
  final bool? outlined;
  final String label;
  const GradientButton(
      {Key? key, required this.onPressed, this.outlined, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Container(
          width: double.infinity,
          height: 53.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(colors: [
                Color.fromRGBO(252, 70, 107, 1),
                Color.fromRGBO(63, 94, 251, 1)
              ])),
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: ElevatedButton(
              onPressed: () => onPressed(),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all(
                      outlined == true ? Colors.white : Colors.transparent)),
              child: outlined == true
                  ? GradientText(
                      label,
                      style: const TextStyle(fontSize: 16),
                      colors: const [
                        Color.fromRGBO(252, 70, 107, 1),
                        Color.fromRGBO(63, 94, 251, 1)
                      ],
                    )
                  : Text(label,
                      style: TextStyle(
                          fontSize: 16,
                          color:
                              outlined == true ? Colors.black : Colors.white)),
            ),
          )),
    );
  }
}
