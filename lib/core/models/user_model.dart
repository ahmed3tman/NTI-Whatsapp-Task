import 'package:flutter/material.dart';
import 'package:whatsapp/core/utils/color_func.dart';
import 'package:whatsapp/core/utils/list_user.dart';
import 'package:whatsapp/features/home/widget/filter_list.dart';
import 'package:whatsapp/features/home/widget/user_list_tile.dart';

class UserModel extends StatelessWidget {
  const UserModel({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: UserList.length,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'بحث...',
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: colorApp.SecondColor,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 16,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          );
        } else if (index == 1) {
          return FilterList();
        } else {
          index -= 2;
          return ListTileModel(opjUser: UserList[index]);
        }
      },
    );
  }
}
