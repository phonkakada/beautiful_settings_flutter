import 'package:flutter/cupertino.dart';

class Setting {
  String title = "";
  IconData? prefixIcons;
  Widget? suffix;
  Function? onTap;

  Setting(this.title, this.prefixIcons, this.suffix, this.onTap);
}