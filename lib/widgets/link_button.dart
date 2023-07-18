import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  final String value;
  const LinkButton({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(value,
            style: const TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(104, 95, 95, 1),
                fontWeight: FontWeight.normal)));
  }
}
