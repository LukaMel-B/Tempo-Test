import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarDetails {
  var detailsAppBar = AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      Container(
        margin: EdgeInsets.all(5),
        width: 50,
        decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit,
              color: Colors.white,
            )),
      )
    ],
    leading: Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.only(right: 5),
      width: 60,
      decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          )),
    ),
    centerTitle: true,
  );
}

var sixh7 = SizedBox(height: 7);
var sixh8 = SizedBox(height: 8);
var sixh6 = SizedBox(height: 6);
var sixh10 = SizedBox(height: 10);
var sixh20 = SizedBox(height: 20);
var sixh5 = SizedBox(height: 5);
