import 'package:flutter/material.dart';

ListTile getListTile(icon, iconColor, titleText, context) {
  return ListTile(
    leading: Container(
      width: 4.0,
      child: Icon(
        icon,
        color: iconColor,
        size: 24.0,
      ),
    ),
    title: Text(
      titleText,
      style: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w700,
      ),
    ),
    onTap: () => Navigator.of(context).pop(),
  );
}
