import 'package:bit_nine_demo/screen/create_account/create_account.dart';
import 'package:bit_nine_demo/screen/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'screen/HomeLayout.dart';
import 'providers/my_provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // FirebaseFirestore.instance.disableNetwork();//Data local
  runApp(ChangeNotifierProvider(
      create:(context) =>  MyProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1280, 720),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context ,child){
    return MaterialApp(

    initialRoute: HomePage.routeName,

    routes: {
      HomePage.routeName: (context) => HomePage(),
      LoginScreen.routeName: (context) => LoginScreen(),
      CreateAcoount.routeName:(context) => CreateAcoount(),

    },
      debugShowCheckedModeBanner: false,

    );
    },
    );
  }


}





