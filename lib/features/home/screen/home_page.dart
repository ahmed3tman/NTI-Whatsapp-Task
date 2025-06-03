import 'package:flutter/material.dart';
import 'package:whatsapp/core/utils/text_style.dart';
import 'package:whatsapp/features/home/widget/popup_menu_button.dart';
import 'package:whatsapp/core/models/user_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              SizedBox(width: 10),
              Text('واتساب', style: myStyle1),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.camera_alt_outlined),
              ),
              PopupMenuButtonHome(),
            ],
          ),
        ),

        body: Column(children: [Expanded(child: UserModel())]),
      ),
    );
  }
}
