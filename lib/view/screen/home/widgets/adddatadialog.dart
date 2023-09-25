import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_bloc/db/functions/functions.dart';
import 'package:note_bloc/utils/alltext/alltext.dart';
import 'package:note_bloc/utils/colros/colors.dart';
import 'package:note_bloc/view/screen/home/widgets/textfields.dart';
import 'package:sizer/sizer.dart';

final TextEditingController tit = TextEditingController();
final TextEditingController sub = TextEditingController();

addDATA(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Container(
            height: 30.h,
            width: 100.w,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  textfiled(con: tit, hint: "title"),
                  textfiled(con: sub, hint: "subtile"),
                  ElevatedButton.icon(
                      onPressed: () {
                        adddata(tit: tit.text, sub: sub.text);
                        Get.back();
                        sub.clear();
                        tit.clear();
                      },
                      icon: Icon(Icons.save),
                      label: alltext(
                          txt: "Submit",
                          col: bl,
                          siz: 12.sp,
                          wei: FontWeight.bold,
                          max: 1))
                ],
              ),
            ),
          ),
        );
      });
}
