import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tempo/app/data/models/employee_model.dart';
import 'package:tempo/app/modules/details/views/widgets/appbar.dart';
import 'package:tempo/app/modules/details/views/widgets/bottom_buttons.dart';
import 'package:tempo/app/modules/details/views/widgets/bottom_section.dart';
import 'package:tempo/app/modules/details/views/widgets/buttons_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:tempo/app/modules/details/views/widgets/contact_buttons.dart';
import 'package:tempo/app/modules/details/views/widgets/contact_texts.dart';
import '../controllers/details_controller.dart';

class DetailsView extends GetView<DetailsController> {
  final EmployeeModel profile = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDetails().detailsAppBar,
      body: Scaffold(
        body: SafeArea(
            child: ListView(
          children: [
            DetailsWidget(profile: profile),
            sixh10,
            Container(
              color: Color.fromARGB(255, 241, 241, 241),
              height: 35,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  sixh20,
                  Row(
                    children: [
                      sixh10,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mobile',
                            style: TextStyle(fontSize: 15),
                          ),
                          sixh5,
                          Text(
                            profile.contactNumber!,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(width: 170),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(CupertinoIcons.chat_bubble_text)),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(CupertinoIcons.phone),
                      )
                    ],
                  ),
                  sixh20,
                  ContactTexts(text: profile.email!, title: 'Email'),
                  sixh20,
                  ContactTexts(text: profile.age.toString(), title: 'Age'),
                  sixh20,
                  ContactTexts(text: profile.address!, title: 'Address'),
                  sixh20,
                  ContactTexts(
                      text: profile.salary.toString(), title: 'Salary'),
                  sixh20,
                  sixh10,
                  BottomSection()
                ],
              ),
            ))
          ],
        )),
      ),
    );
  }
}
