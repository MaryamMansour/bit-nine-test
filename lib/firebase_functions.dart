import 'package:bit_nine_demo/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


class FireBaseFunctions{




static Future<UserModel?> readUser(String id)async{

  DocumentSnapshot<UserModel> userSnap=
  await getUserCollection().doc(id).get();
  return userSnap.data();
}



static void createAcoount (String name, int age,String email, String password, Function created)async{
  try {
    final credential = await FirebaseAuth.instance.
    createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    //credential.user!.sendEmailVerification(); email verify
    //FirebaseAuth.instance.sendPasswordResetEmail(email: "email")
    UserModel userModel = UserModel(id: credential.user!.uid
        ,name: name, email: email, age: age);
  addUserToFirestore(userModel).then((value) { created();});

  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print(e.message);
    } else if (e.code == 'email-already-in-use') {
      print(e.message);
    }
  } catch (e) {
    print(e);
  }
}






  static CollectionReference<UserModel> getUserCollection()
  {
    return FirebaseFirestore.instance.
    collection(UserModel.COLLECTION_NAME)
        .withConverter<UserModel>(
      fromFirestore: (snapshot,options) {
         return UserModel.fromJson(snapshot.data()!);
          },
      toFirestore: (user,options) {
        return user.toJson();
      }
    );
  }

  static Future <void> addUserToFirestore(UserModel user){
    var collection = getUserCollection();
    var docRef= collection.doc(user.id);
      return docRef.set(user);
  }



}