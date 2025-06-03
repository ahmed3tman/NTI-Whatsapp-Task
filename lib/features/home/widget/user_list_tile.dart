import 'package:flutter/material.dart';
import 'package:whatsapp/core/utils/text_style.dart';
import 'package:whatsapp/core/models/user_list_model.dart';

class ListTileModel extends StatelessWidget {
  final userLestModel opjUser;
  const ListTileModel({Key? key, required this.opjUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(opjUser.name, style: myStyle),
      subtitle: Text((opjUser.message), style: myStyle2),
      trailing: Text(opjUser.time),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(opjUser.image),
        radius: 25,
      ),
    );
  }
}
