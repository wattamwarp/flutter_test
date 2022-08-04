import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_projects1/get_widget.dart';

class newScreen extends StatefulWidget {
  const newScreen({Key? key}) : super(key: key);

  @override
  State<newScreen> createState() => _newScreenState();
}

class _newScreenState extends State<newScreen> {
  @override
  Widget build(BuildContext context) {
    const rawJson = '{"type":"text","data":"padmanabh","style":"1234"}';
    final parsedJson = jsonDecode(rawJson);

    const rawJson2 =
        '{"type": "Container","style":"145","child": [{"type": "Text","data": "Loren Ipsum","style":"1234"},{"type": "Text","data": "Loren Ipsum123","style":"1234"},{"type": "Text","data": "Padmanabh Wattamwar","style":"1234"}]}';
    final parsedJson2 = jsonDecode(rawJson2);

    var list=parsedJson2['child'] as List;
    //print(list[1]['data']);
    print(list.length);

    return Scaffold(
      body: SafeArea(        child: Container(
          child: Column(
            children: [
              // GetWidget(
              //     type: parsedJson['type'],
              //     styleId: parsedJson['style'],
              //     context: context,
              //     text: parsedJson['data']),
              Column(
                children: [
                  GetWidget2(list: list, context: context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
