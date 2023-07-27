import 'package:bit_nine_demo/screen/HomeLayout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../providers/my_provider.dart';
import '../base.dart';
import '../create_account/create_account.dart';
import 'connector.dart';
import 'login_viewmodel.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "LoginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends BaseView<LoginViewModel, LoginScreen>
    implements LoginConnector {
  var emailController = TextEditingController();

  var PassController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  void initState() {
    super.initState();
    viewModel.connector = this;
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return ChangeNotifierProvider(
      create: (context) => viewModel,
      builder: (context, child) => Scaffold(
        //another way other than single child to avoid keyboard over flow
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Color(0xFFE5E4E2),
          title: InkWell(
              onTap: () {
                goToHome();
              },
              child: Image.asset(
                "assets/bitnine.png",
                width: 150.w,
                height: 70.h,
              )),
        ),
        body: Card(
          elevation: 12,
          margin: EdgeInsets.only(left: 700, top: 50, bottom: 50, right: 20),
          child: Expanded(
            child: Container(
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Login",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.black26,
                              fontSize: 30.sp,
                            )),
                    SizedBox(
                      height: 100.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
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
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
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
                      height: 30.h,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            viewModel.login(
                                emailController.text, PassController.text);
                          }

                        },
                        child: Text("Login")),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 80.w,
                        ),
                        Text(
                          "Don't have an account ?",
                          style: GoogleFonts.quicksand(
                              fontSize: 12.sp, color: Colors.black54),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, CreateAcoount.routeName);
                            },
                            child: Text("Create Account"))
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    )
                  ],
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

  @override
  LoginViewModel initViewModel() {
    return LoginViewModel();
  }
}
