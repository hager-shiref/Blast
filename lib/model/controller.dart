// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:untitled/model/model.dart';

// class Data with ChangeNotifier{
//   BlastModel model=BlastModel();
//   BlastModel getData(){
//     FirebaseFirestore
//     .instance
//     .collection('blast')
//     .doc('cSyotJNpVDrD2oS0hzod')
//     .get()
//     .then((value) 
//     {
      

//          model= BlastModel.fromJson(value.data()!);
//         // model.data=value.get('data');
//         // model.id=value.get('id');
      
//       print(value.data());
//     }
//     )
//     .catchError((error)
//     {
//       print(error.toString());
//     });
//     notifyListeners();
//     return model;
// }}