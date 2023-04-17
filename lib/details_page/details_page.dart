import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String text;
  const DetailsPage({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(text),
      ),
    );
  }
}
