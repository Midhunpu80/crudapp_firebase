import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

final CollectionReference listdata =
    FirebaseFirestore.instance.collection("noteList");

adddata({
  required var tit,
  required var sub,
}) {
  var data = {
    "title": tit,
    "subtitle": sub,
  };
  listdata.add(data);
}

deleteata({required var id}) {
  listdata.doc(id).delete();
}
