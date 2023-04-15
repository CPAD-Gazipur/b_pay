import 'package:b_pay/model/model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileOptionData {
  static List<ProfileOptionModel> profileOptions = [
    ProfileOptionModel(
      title: 'Account',
      color: Colors.green,
      icon: FontAwesomeIcons.user,
    ),
    ProfileOptionModel(
      title: 'Emergency',
      color: Colors.red,
      icon: FontAwesomeIcons.boltLightning,
    ),
    ProfileOptionModel(
      title: 'Complain',
      color: Colors.orange,
      icon: FontAwesomeIcons.fileInvoice,
    ),
    ProfileOptionModel(
      title: 'Office Location',
      color: Colors.blue,
      icon: FontAwesomeIcons.locationDot,
    ),
    ProfileOptionModel(
      title: 'Settings',
      color: Colors.green,
      icon: FontAwesomeIcons.gear,
    ),
    ProfileOptionModel(
      title: 'Help and Documentation',
      color: Colors.greenAccent,
      icon: FontAwesomeIcons.fileContract,
    ),
    ProfileOptionModel(
      title: 'Logout',
      color: Colors.red,
      icon: FontAwesomeIcons.arrowRightFromBracket,
    ),
  ];
}
