import 'package:beautiful_settings_flutter/models/settings.dart';
import 'package:flutter/material.dart';

class SettingWidget extends StatefulWidget {
  const SettingWidget({super.key, required this.data});

  final Settings data;

  @override
  State<SettingWidget> createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {
  @override
  Widget build(BuildContext context) {
    final Settings data = widget.data;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(
          data.groupName,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: ListView.builder(
            itemCount: data.settings.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final setting = data.settings[index];
              return Container(
                decoration: BoxDecoration(
                  border: (data.settings.length - 1 != index)
                      ? BoxBorder.fromLTRB(
                    bottom: BorderSide(width: 0.5, color: Colors.black12),
                  )
                      : Border.all(color: Colors.transparent),
                ),
                padding: EdgeInsets.only(top: 12 , bottom: 12),
                margin: EdgeInsets.only(left: 15 , right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(setting.prefixIcons , color: Colors.black54,),
                        const SizedBox(width: 20),
                        Text(setting.title , style: TextStyle(fontWeight: FontWeight.w500 , color: Colors.black),),
                      ],
                    ),
                    ?setting.suffix,
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
