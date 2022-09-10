import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tempo/app/modules/details/views/widgets/bottom_buttons.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BottomButton(
            text: 'Share location',
            icon: CupertinoIcons.location,
            color: Color(0xff443EF5)),
        BottomButton(
            text: 'Qr code',
            icon: Icons.qr_code_2_rounded,
            color: Color(0xffD9DBE9)),
        BottomButton(
            text: 'Share contact',
            icon: FontAwesomeIcons.solidPaperPlane,
            color: Color.fromARGB(255, 79, 227, 187)),
      ],
    );
  }
}
