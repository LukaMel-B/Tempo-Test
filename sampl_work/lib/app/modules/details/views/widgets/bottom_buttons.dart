import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tempo/app/modules/details/views/widgets/appbar.dart';
import 'package:tempo/app/modules/details/views/widgets/contact_buttons.dart';

class BottomButton extends StatelessWidget {
  final Color color;
  final String text;
  final IconData icon;
  const BottomButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContactButtons(icon: icon, color: color),
        sixh5,
        Text(
          text,
          style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
