import 'package:beautiful_settings_flutter/models/setting.dart';
import 'package:beautiful_settings_flutter/models/settings.dart';
import 'package:flutter/material.dart';

class SettingData {
  List<Settings> settings = [
    Settings("Preference" , [
      Setting("Dark Mode", Icons.nightlight_sharp, Icon(Icons.arrow_forward_ios_outlined , size: 16 , color: Colors.grey,), null),
      Setting("Notifications", Icons.notifications_none,  Icon(Icons.arrow_forward_ios_outlined , size: 16 , color: Colors.grey,), null),
      Setting("Biometric Unlock", Icons.fingerprint,  Icon(Icons.arrow_forward_ios_outlined , size: 16 , color: Colors.grey,), null),
      Setting("Cloud Sync", Icons.sync,  Icon(Icons.arrow_forward_ios_outlined , size: 16 , color: Colors.grey,), null),
    ]),
    Settings("General", [
      Setting("Language", Icons.language,  Row(children: [Text('English' , style: TextStyle(color: Colors.grey , fontWeight: FontWeight.w600 , fontSize: 13),) , SizedBox(width: 5,), Icon(Icons.arrow_forward_ios_outlined , size: 16 , color: Colors.grey,)],), null),
      Setting("Region", Icons.location_on_outlined,   Row(children: [Text('Phnom Penh' , style: TextStyle(color: Colors.grey , fontWeight: FontWeight.w600 , fontSize: 13),) , SizedBox(width: 5,), Icon(Icons.arrow_forward_ios_outlined , size: 16 , color: Colors.grey,)],), null),
      Setting("Storage", Icons.storage,   Row(children: [Text('2.4G' , style: TextStyle(color: Colors.grey , fontWeight: FontWeight.w600 , fontSize: 13),) , SizedBox(width: 5,), Icon(Icons.arrow_forward_ios_outlined , size: 16 , color: Colors.grey,)],), null),
      Setting("About", Icons.info_outline_rounded,   Row(children: [Text('v.1.0.0' , style: TextStyle(color: Colors.grey , fontWeight: FontWeight.w600 , fontSize: 13),) , SizedBox(width: 5,), Icon(Icons.arrow_forward_ios_outlined , size: 16 , color: Colors.grey,)],), null),
    ]),
    Settings("Account", [
      Setting("Privacy & Security", Icons.turned_in_not_outlined,  Icon(Icons.arrow_forward_ios_outlined , size: 16 , color: Colors.grey,), null),
      Setting("Subscription", Icons.credit_card,  Icon(Icons.arrow_forward_ios_outlined , size: 16 , color: Colors.grey,), null),
      Setting("Devices", Icons.devices_outlined,  Icon(Icons.arrow_forward_ios_outlined , size: 16 , color: Colors.grey,), null),
    ])
  ];
}