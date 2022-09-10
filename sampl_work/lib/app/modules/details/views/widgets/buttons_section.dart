import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tempo/app/data/models/employee_model.dart';
import 'package:tempo/app/modules/details/views/widgets/appbar.dart';
import 'package:tempo/app/modules/details/views/widgets/contact_buttons.dart';

class DetailsWidget extends StatelessWidget {
  final EmployeeModel profile;
  const DetailsWidget({Key? key, required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      height: 250,
      child: Column(
        children: [
          sixh7,
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.only(right: 5),
            width: 110,
            height: 110,
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(profile.imageUrl!)),
                borderRadius: BorderRadius.all(Radius.circular(30))),
          ),
          sixh8,
          Text(
            "${profile.firstName} ${profile.lastName}",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 6),
          Text(
            profile.contactNumber!,
            style: TextStyle(fontSize: 15, letterSpacing: 1),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 20),
              ContactButtons(
                  icon: CupertinoIcons.chat_bubble_text,
                  color: Color.fromARGB(255, 0, 190, 127)),
              ContactButtons(
                  icon: CupertinoIcons.phone,
                  color: Color.fromARGB(255, 34, 153, 250)),
              ContactButtons(
                  icon: CupertinoIcons.videocam,
                  color: Color.fromARGB(255, 247, 88, 77)),
              ContactButtons(
                  iconColor: Colors.black,
                  icon: CupertinoIcons.mail,
                  color: Color.fromARGB(255, 213, 210, 230)),
              SizedBox(width: 20),
            ],
          )
        ],
      ),
    );
  }
}
