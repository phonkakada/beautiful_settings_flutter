import 'package:flutter/material.dart';

Widget headerIconWidget(IconData icon , Function onTap) => GestureDetector(
  onTap: () => onTap(),
  child: Container(
    padding: EdgeInsets.all(6),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8)
    ),
    child: Icon(icon , size: 20,),
  ),
);