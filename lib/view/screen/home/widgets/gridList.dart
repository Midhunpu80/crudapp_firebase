import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:note_bloc/db/functions/functions.dart';
import 'package:note_bloc/utils/alltext/alltext.dart';
import 'package:note_bloc/utils/colros/colors.dart';
import 'package:note_bloc/view/screen/home/widgets/adddatadialog.dart';
import 'package:sizer/sizer.dart';

Widget gridList() {
  return StreamBuilder(
      stream: listdata.snapshots(),
      builder: (context, AsyncSnapshot snapshot) {
        return !snapshot.hasData
            ? const SizedBox()
            : SizedBox(
                height: 87.h,
                width: 100.w,
                child: GridView.builder(
                    itemCount: snapshot.data.docs.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 1.h,
                        mainAxisSpacing: 2.h),
                    itemBuilder: (context, index) {
                      final DocumentSnapshot snap = snapshot.data.docs[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 10.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: bl,
                              ),
                              borderRadius: BorderRadius.circular(2.h)),
                          child: ListTile(
                              subtitle: alltext(
                                  txt: snap['title'],
                                  col: bl,
                                  siz: 10.sp,
                                  wei: FontWeight.bold,
                                  max: 1),
                              title: alltext(
                                  txt: snap['subtitle'],
                                  col: bl,
                                  siz: 12.sp,
                                  wei: FontWeight.bold,
                                  max: 1),
                              trailing: FittedBox(
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        deleteata(id: snap.id);
                                        print("data");
                                      },
                                      child: Icon(
                                        Icons.delete,
                                        color: re,
                                        size: 3.h,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        print("raivsnsn");
                                      },
                                      child: Icon(
                                        Icons.edit,
                                        color: re,
                                        size: 3.h,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      );
                    }),
              );
      });
}
