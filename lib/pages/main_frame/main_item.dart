import 'package:flutter/material.dart';

class MainItem extends StatefulWidget {
  const MainItem({Key? key}) : super(key: key);

  @override
  MainItemState createState() => MainItemState();
}

class MainItemState extends State<MainItem> {
  // String _inputPhoneNumber;
  String _inputPhoneNumber = '';

  final title = const Padding(
      padding: EdgeInsets.only(top: 100, right: 100),
      child: Text('КККонфиденция',
          style: TextStyle(
              fontSize: 25,
              color: Color(0xFF93827a),
              fontFamily: 'NanumGothic')));

  final textUnderField = const Padding(
      padding: EdgeInsets.only(top: 100, right: 250),
      child: Text('Номер телефона',
          style: TextStyle(
              fontSize: 15,
              color: Color(0xFF93827a),
              fontFamily: 'NanumGothic')));



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[title, textUnderField, Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
              onSubmitted: (text) {
                _inputPhoneNumber  = text;
                print(_inputPhoneNumber);
              },
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.brown, width: 5.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 5.0),
                ),
                prefixText: '+7',
                labelText: '+7 911 000 00 00',
                floatingLabelBehavior: FloatingLabelBehavior.never,
              )))],
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
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
