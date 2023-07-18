import 'package:flutter/material.dart';
import 'package:kioku/widgets/title_description.dart';

class Title extends StatelessWidget {
  final String value;
  const Title({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        value,
        style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class TitleWithDescription extends StatelessWidget {
  final String title;
  final String description;
  const TitleWithDescription(
      {Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Title(value: title),
      TitleDescription(value: description),
      const SizedBox(height: 18),
    ]);
  }
}
