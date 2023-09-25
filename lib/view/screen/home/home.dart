import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:note_bloc/utils/alltext/alltext.dart';
import 'package:note_bloc/utils/colros/colors.dart';
import 'package:note_bloc/view/screen/home/widgets/adddatadialog.dart';
import 'package:note_bloc/view/screen/home/widgets/gridList.dart';
import 'package:sizer/sizer.dart';

class Home extends StatelessWidget {
  final CollectionReference data =
      FirebaseFirestore.instance.collection('noteList');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 10.h,
              leading: Icon(
                Icons.notes_rounded,
                color: wh,
              ),
              backgroundColor: bl,
              centerTitle: true,
              title: alltext(
                  txt: "NAS Note",
                  col: wh,
                  siz: 12.sp,
                  wei: FontWeight.bold,
                  max: 1),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                addDATA(context);
                
              },
              // ignore: sort_child_properties_last
              child: Icon(
                Icons.add,
                color: wh,
              ),
              backgroundColor: re,
            ),
            body:
                SingleChildScrollView(child: Column(children: [gridList()]))));
  }
}
