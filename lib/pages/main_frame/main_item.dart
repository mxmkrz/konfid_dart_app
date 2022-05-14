import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class MainItem extends StatefulWidget {
  const MainItem({Key? key}) : super(key: key);

  @override
  MainItemState createState() => MainItemState();
}

class MainItemState extends State<MainItem> {
  String _inputPhoneNumber = '';




  final title = const Padding(
      padding: EdgeInsets.only(top: 100, right: 100),
      child: Text('ККонфиденция',
          style: TextStyle(
              fontSize: 25,
              color: Color(0xFF93827a),
              fontFamily: 'NanumGothic')));

  final textUnderField = Column(
    children: <Widget>[
  SizedBox(
  width: double.infinity,
      child: Container(
          child: Text(
              "Номер телефона",
              textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 15,
              color: Color(0xFF93827a),
                fontFamily: 'NanumGothic'
            ),
          ),
        padding: EdgeInsets.only(top: 100, left: 20),
      ),
  ),
    ],
  );


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: const Color(0xFFE7E3E0),
      body: Column(
        children: <Widget>[title, textUnderField, Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
              onSubmitted: (text) {
                _inputPhoneNumber  = text;
                print(_inputPhoneNumber);
              },
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.0),
                ),
                prefixText: '+7',
                labelText: '+7 911 000 00 00',
                floatingLabelBehavior: FloatingLabelBehavior.never,
              )))],
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            FirebaseFirestore.instance.collection('tezt').add({'item': _inputPhoneNumber});
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text(_inputPhoneNumber),
                );
              },
            );
          },
          tooltip: 'Show me the value!',
          child: const Icon(Icons.text_fields),
        ),
    );
  }
}
