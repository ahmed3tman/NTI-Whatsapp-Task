import 'package:flutter/material.dart';
import 'package:whatsapp/core/utils/text_style.dart';

class PopupMenuButtonHome extends StatefulWidget {
  const PopupMenuButtonHome({Key? key}) : super(key: key);

  @override
  State<PopupMenuButtonHome> createState() => _PopupMenuButtonHomeState();
}

class _PopupMenuButtonHomeState extends State<PopupMenuButtonHome> {
  String? selectedMenu;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      position: PopupMenuPosition.under,
      icon: Icon(Icons.more_vert),
      onSelected: (value) {
        setState(() {
          selectedMenu = value;
        });
        if (value == 'new_group') {
          // أكشن مجموعة جديدة
        } else if (value == 'new_broadcast') {
          // أكشن رسالة جماعية جديدة
        } else if (value == 'linked_devices') {
          // أكشن الأجهزة المرتبطة
        } else if (value == 'starred_messages') {
          // أكشن الرسائل المميزة
        } else if (value == 'settings') {
          // أكشن الإعدادات
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 'new_group',
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text('مجموعة جديدة', style: myStyle2)],
          ),
        ),
        PopupMenuItem(
          value: 'new_broadcast',
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text('رسالة جماعية جديدة', style: myStyle2)],
          ),
        ),
        PopupMenuItem(
          value: 'linked_devices',
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text('الأجهزة المرتبطة', style: myStyle2)],
          ),
        ),
        PopupMenuItem(
          value: 'starred_messages',
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text('الرسائل المميزة', style: myStyle2)],
          ),
        ),
        PopupMenuItem(
          value: 'settings',
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text('الإعدادات', style: myStyle2)],
          ),
        ),
      ],
    );
  }
}
