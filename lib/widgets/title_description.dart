import 'package:flutter/material.dart';

class TitleDescription extends StatelessWidget {
  final String value;
  const TitleDescription({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        value,
        style: const TextStyle(
          fontSize: 16,
          color: Color.fromRGBO(130, 121, 121, 1),
        ),
      ),
    );
  }
}
