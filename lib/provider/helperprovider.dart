import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo_project/model/flore_model.dart';
import 'package:demo_project/model/maintenance.dart';
import 'package:demo_project/model/productbuysell.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class HelperProvider with ChangeNotifier {
  final db = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;

  final roomnumbercontroller = TextEditingController();

  clear() {
    roomnumbercontroller.clear();
  }

  // funvtion

  String? selelctedroom;

  selectflore(valuew) {
    selelctedroom = valuew as String;
    notifyListeners();
  }

  // set

  Future addmaintaince(MaintenanceModel maintenanceModel) async {
    final snapshot = db.collection('Maintance').doc();

    snapshot.set(maintenanceModel.tojason(snapshot.id));
  }

  Future addFlore(Floremodel floremodel,) async {
    db.collection(selelctedroom.toString()).doc().set(floremodel.toJsone());
  }

  Future addProduct(ProductBuysell productBuysell) async {
    final snapshot = db.collection('Buysell').doc();

    snapshot.set(productBuysell.toJson(snapshot.id));
  }

  /// get

  List<Floremodel> floremodel = [];
  Future checkflore(String florenumber) async {
    final snapshot = await db
        .collection(selelctedroom.toString())
        .where(
          'Flore',
          isEqualTo: selelctedroom,
        )
        .where('Floreno', isEqualTo: florenumber)
        .get();

    floremodel = snapshot.docs.map((e) {
      return Floremodel.fromjason(e.data());
    }).toList();
    notifyListeners();
  }

  List<ProductBuysell> allproduct = [];
  Future getAllProduct() async {
    final snapshot = db.collection('Buysell').snapshots();

    snapshot.listen((event) {
      allproduct = event.docs.map((e) {
        return ProductBuysell.fromjson(e.data());
      }).toList();
    });
  }

  List<MaintenanceModel> maintainelist = [];
  Future getMaintaines() async {
    final snapshot = await db.collection('Maintance').snapshots();

    snapshot.listen((event) {
      maintainelist = event.docs.map((e) {
        return MaintenanceModel.fromjson(e.data());
      }).toList();
    });
  }
}
