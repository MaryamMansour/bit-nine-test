import 'package:firebase_auth/firebase_auth.dart';
import '../../firebase_functions.dart';
import '../../models/user_model.dart';
import '../base.dart';
import 'create_account_connector.dart';

class SignUpViewModel extends BaseViewModel<CreateAccountConnector>{


  void SignUp(String email, String password,String name , int age, Function created)async{

    try {
      connector!.showLoading("");
      final credential = await FirebaseAuth.instance.
      createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      UserModel userModel = UserModel(id: credential.user!.uid
          ,name: name, email: email, age: age);
      FireBaseFunctions.addUserToFirestore(userModel).then((value) {created();});

    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        connector!.showMessage(e.message??"");
      } else if (e.code == 'email-already-in-use') {
        connector!.showMessage(e.message??"");
      }
    } catch (e) {
      connector!.showMessage(e.toString());
    }


  }
}