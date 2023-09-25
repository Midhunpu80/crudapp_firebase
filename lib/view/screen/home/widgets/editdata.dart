import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:note_bloc/db/functions/functions.dart';
import 'package:note_bloc/utils/alltext/alltext.dart';
import 'package:note_bloc/utils/colros/colors.dart';

import 'package:note_bloc/view/screen/home/widgets/textfields.dart';
import 'package:sizer/sizer.dart';

editDATA(
    {required BuildContext context,
    required dynamic titl,
    required dynamic subl,
    required dynamic id}) {
  final TextEditingController newtit =
      TextEditingController(text: titl.toString());
  final TextEditingController newsub =
      TextEditingController(text: subl.toString());

  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SizedBox(
            height: 30.h,
            width: 100.w,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  textfiled(con: newtit, hint: "title"),
                  textfiled(con: newsub, hint: "subtitle"),
                  ElevatedButton.icon(
                      onPressed: () {
                        edit(
                            tit: newtit.text,
                            sub: newsub.text.toString(),
                            id: id);
                        Get.back();
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
