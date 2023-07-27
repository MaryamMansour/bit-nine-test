import 'package:bit_nine_demo/screen/HomeLayout.dart';
import 'package:bit_nine_demo/screen/create_account/sign_up_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


import '../../firebase_functions.dart';
import '../../providers/my_provider.dart';
import '../base.dart';
import '../login/login.dart';
import 'create_account_connector.dart';

class CreateAcoount extends StatefulWidget {
  static const String routeName = "CreateAcoountScreen";

  @override
  State<CreateAcoount> createState() => _CreateAcoountState();
}

class _CreateAcoountState extends BaseView<SignUpViewModel, CreateAcoount> implements CreateAccountConnector {



  @override
  SignUpViewModel initViewModel() {
    // TODO: implement initViewModel
    return SignUpViewModel();
  }

  var formKey = GlobalKey<FormState>();

  var emailController = TextEditingController();

  var PassController = TextEditingController();

  var nameController = TextEditingController();

  var ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<MyProvider>(context);

    return ChangeNotifierProvider(
      create: (context) => viewModel,
      builder: (context, child) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Color(0xFFE5E4E2),
          title: InkWell(
            onTap: (){
              goToHome();
            },
              child: Image.asset("assets/bitnine.png", width: 150.w,height: 70.h,)),
          actions: [

          ],

        ),
        body: Card(
          elevation: 12,
          margin: EdgeInsets.only(left: 700,top: 50,bottom: 50,right: 20),
          child: SingleChildScrollView(
            child: Expanded(
              child: Container(
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      SizedBox(height: 30.h,),
                      Text("Craete Acoount",
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: Colors.black26,
                                fontSize: 30.sp,
                              )),
                       SizedBox(
                        height: 50.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 15),
                        child: TextFormField(
                          controller: nameController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "please enter name";
                            }

                            return null;
                          },
                          decoration: InputDecoration(
                              label: Text("Name"),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Colors.blue))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 15),
                        child: TextFormField(
                          controller: ageController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              label: Text("Age"),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Colors.blue))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 15),
                        child: TextFormField(
                          controller: emailController,
                          validator: (value) {
                            bool emailValid = RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value!);
                            if (value.isEmpty) {
                              return "please enter email";
                            } else if (!emailValid) {
                              return "Please enter valid email";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              label: Text("Email"),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Colors.blue))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 15),
                        child: TextFormField(
                          controller: PassController,
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "please enter Password";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              label: Text("Password"),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: Colors.blue),
                              )),
                        ),
                      ),
                       SizedBox(
                        height: 70.h,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            viewModel.SignUp(emailController.text,
                                PassController.text, nameController.text, int.parse(ageController.text), () {
                          provider.initUser();
                      Navigator.pushReplacementNamed(
                          context, HomePage.routeName);});

                          },
                          child: Text("Sign Up")),

                      Row(
                        children: [
                           SizedBox(width: 80.w,),
                          Text(
                            "I've an account ?",
                            style: GoogleFonts.quicksand(
                                fontSize: 12.sp, color: Colors.black54),
                          ),
                           SizedBox(
                            height: 4.h,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, LoginScreen.routeName);
                              },
                              child: Text("Login")),
                        ],
                      ),
                       SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void goToHome() {
    Navigator.pushReplacementNamed(context, HomePage.routeName);
  }

}
