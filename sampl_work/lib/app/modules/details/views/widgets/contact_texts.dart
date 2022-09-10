import 'package:flutter/material.dart';
import 'package:tempo/app/modules/details/views/widgets/appbar.dart';

class ContactTexts extends StatelessWidget {
  final String title;
  final String text;
  const ContactTexts({Key? key, required this.text, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        sixh10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 15),
            ),
            sixh5,
            Text(
              text,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    );
  }
}
