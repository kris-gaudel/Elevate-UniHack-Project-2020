import 'package:flutter/material.dart';

class TextAreaWidget extends StatelessWidget {
  final String text;

  const TextAreaWidget({
    @required this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://i.pinimg.com/564x/da/a5/0e/daa50e02bc71231dec51e66f2cc1cc00.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 100,
                decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(8),
                alignment: Alignment.center,
                child: SelectableText(
                  text.isEmpty ? 'Scan an Image to get text' : text,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}