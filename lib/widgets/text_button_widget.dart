import 'package:flutter/material.dart';

Widget textButtonWidget(String title, Function onTap) {
  return TextButton(
    onPressed: () => onTap(),
    child: Container(
      alignment: Alignment.center,
        child: Text(title)),
  );
}
