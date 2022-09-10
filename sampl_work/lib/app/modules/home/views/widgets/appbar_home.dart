import 'package:flutter/material.dart';

var appBarHome = AppBar(
  automaticallyImplyLeading: false,
  title: Text(
    'Contacts',
    style: TextStyle(
        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
  ),
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
    width: 60,
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/avatar.jpg'), fit: BoxFit.cover),
        borderRadius: BorderRadius.all(Radius.circular(20))),
  ),
  centerTitle: true,
);

var textField = TextFormField(
  decoration: InputDecoration(
      prefixIcon: Icon(Icons.search),
      hintText: 'Search',
      contentPadding: const EdgeInsets.all(15),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
);
