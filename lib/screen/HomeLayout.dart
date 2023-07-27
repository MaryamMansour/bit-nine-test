import 'package:bit_nine_demo/screen/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:hovering/hovering.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "homePage";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var keyUseCases = GlobalKey();
    var keyService = GlobalKey();
    var keyProducts = GlobalKey();
    var keyBlog = GlobalKey();
    var keyCompany = GlobalKey();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE5E4E2),
        title: Image.asset(
          "assets/bitnine.png",
          width: 150.w,
          height: 70.h,
        ),
        actions: [
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.hovered)) return Colors.amber;
                return Colors.black;
              }),
            ),
            onPressed: () {
              Scrollable.ensureVisible(
                keyProducts.currentContext!,
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeInOut,
              );
            },
            child: Text(
              'PRODUCTS',
              style: (GoogleFonts.raleway(fontSize: 18.sp)),
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.hovered)) return Colors.amber;
                return Colors.black;
              }),
            ),
            onPressed: () {
              Scrollable.ensureVisible(
                keyUseCases.currentContext!,
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeInOut,
              );
            },
            child: Text(
              'USE CASES',
              style: (GoogleFonts.raleway(fontSize: 18.sp)),
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.hovered)) return Colors.amber;
                return Colors.black;
              }),
            ),
            onPressed: () {
              Scrollable.ensureVisible(
                keyService.currentContext!,
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeInOut,
              );
            },
            child: Text(
              'SERVICES',
              style: (GoogleFonts.raleway(fontSize: 18.sp)),
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.hovered)) return Colors.amber;
                return Colors.black;
              }),
            ),
            onPressed: () {
              Scrollable.ensureVisible(
                keyBlog.currentContext!,
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeInOut,
              );
            },
            child: Text(
              'BLOG',
              style: (GoogleFonts.raleway(fontSize: 18.sp)),
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.hovered)) return Colors.amber;
                return Colors.black;
              }),
            ),
            onPressed: () {
              Scrollable.ensureVisible(
                keyCompany.currentContext!,
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeInOut,
              );
            },
            child: Text(
              'COMPANY',
              style: (GoogleFonts.raleway(fontSize: 18.sp)),
            ),
          ),

          SizedBox(
            width: 25.w,
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.hovered)) return Colors.amber;
                return Colors.black;
              }),
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, LoginScreen.routeName);
            },
            child: Text(
              'LOGIN',
              style: (GoogleFonts.raleway(fontSize: 16.sp)),
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
        ],
      ),
      body: FooterView(
          footer: new Footer(
            child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'Copyright ©2023, All Rights Reserved.',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12.0.sp,
                        color: Color(0xFF162A49)),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Powered by Maryam Mansour',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12.0.sp,
                        color: Color(0xFF162A49)),
                  ),
                ]),
            padding: EdgeInsets.all(20.0),
          ),
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 100.h,
                  ),
                  Column(
                    children: [
                      Container(
                          width: 400.w,
                          height: 150.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/agens.png'),
                              // fit: BoxFit.fill,
                            ),
                          )),
                      Container(
                        key: keyProducts,
                        height: 250.h,
                        color: Colors.white,
                        child: Center(
                          child: Column(children: [
                            Text(
                              textAlign: TextAlign.center,
                              "AgensGraph is an enterprise graph database management system which stores and \n manages various types of data including relational data in your legacy system.aph",
                              style: GoogleFonts.raleway(
                                  color: Colors.black, fontSize: 20.sp),
                            ),
                          ]),
                        ),
                      ),
                      Row(children: [
                        SizedBox(
                          width: 200.w,
                        ),
                        Card(
                          child: Container(
                              height: 200.h,
                              width: 200.w,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  Icon(
                                    (Icons.compare_arrows),
                                    size: 60,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  Center(
                                      child: Text(
                                    "Performance",
                                    style: GoogleFonts.raleway(
                                        fontSize: 16,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w400),
                                  ))
                                ],
                              )),
                          elevation: 12,
                        ),
                        SizedBox(
                          width: 100.w,
                        ),
                        Card(
                          child: Container(
                              height: 200.h,
                              width: 200.w,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  Icon(
                                    (Icons.layers),
                                    size: 60,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  Center(
                                      child: Text(
                                    "Reliability",
                                    style: GoogleFonts.raleway(
                                        fontSize: 16,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w400),
                                  ))
                                ],
                              )),
                          elevation: 12,
                        ),
                        SizedBox(
                          width: 100.w,
                        ),
                        Card(
                          elevation: 12,
                          child: Container(
                              height: 200.h,
                              width: 200.w,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  Icon(
                                    (Icons.settings_suggest),
                                    size: 60,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  Center(
                                      child: Text(
                                    "Compatibility",
                                    style: GoogleFonts.raleway(
                                        fontSize: 16.sp,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w400),
                                  ))
                                ],
                              )),
                        ),
                      ]),
                    ],
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Container(
                    key: keyUseCases,
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 200.h,
                        ),
                        Text(
                          "USE CASES",
                          style: GoogleFonts.raleway(
                              fontSize: 40.sp, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "Our graph database solution cover a wide range of projects.\nIf you need help overcoming your obstacle, feel free to contact us.",
                          style: GoogleFonts.raleway(fontSize: 20.sp),
                        ),
                        SizedBox(
                          height: 100.h,
                        ),
                        Stack(children: [
                          Container(
                              width: MediaQuery.of(context).size.width,
                              height: 500.h,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/graph.png'),
                                  fit: BoxFit.fill,
                                ),
                              )),
                          Column(
                            children: [
                              SizedBox(
                                height: 200.h,
                              ),
                              Center(
                                  child: Text(
                                "Next Graph Initiatives",
                                style: GoogleFonts.raleway(
                                    color: Colors.white,
                                    fontSize: 40.sp,
                                    fontWeight: FontWeight.w400),
                              )),
                              Text(
                                "Bitnine is continuing the effort of expanding projects onsite and also qualitatively enhancing graph technology simultaneously. \n Check out how our graph technology cases were able to monitor risks, reduce costs, improve operational efficiency,\n and increase the revenue of customers from various industries.",
                                style: GoogleFonts.raleway(
                                    color: Colors.white, fontSize: 20.sp),
                              )
                            ],
                          ),
                        ]),
                      ],
                    ),
                  ),
                  Container(
                    key: keyService,
                    height: MediaQuery.of(context).size.height - kToolbarHeight,
                    color: Colors.white,
                    child: Column(children: [
                      SizedBox(
                        height: 150.h,
                      ),
                      Text(
                        'SERVICES',
                        style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 40.0.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                          "We provide consulting and analyzing service \n for those who need help setting up graph database to your existing system.",
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 20.0.sp,
                          ),
                          textAlign: TextAlign.center),
                      SizedBox(
                        height: 70,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor:
                                Colors.amber, // Text Color (Foreground color)
                          ),
                          child: Text(
                            "CONTACT US",
                            style: GoogleFonts.raleway(
                              color: Colors.black,
                              fontSize: 15.0.sp,
                            ),
                          ))
                    ]),
                  ),

                  Container(
                    key: keyCompany,

                    color: Colors.white,
                    child: Column(
                      children:[
                        SizedBox(height: 50.h,),
                        Row(
                          children: [
                            SizedBox(width: 300.w,),Text(
                            'Connecting Data ',
                            style: GoogleFonts.raleway(
                                color: Colors.black,
                                fontSize: 40.0.sp,
                                fontWeight: FontWeight.w500
                            ),),
                            Text(
                              'for a Smarter World',
                              style: GoogleFonts.raleway(
                                color: Colors.black,
                                fontSize: 40.0.sp,

                              ),),],
                        ),
                        SizedBox(height: 20.h,),

                        Text(
                            "With Bitnine’s unique Graph technology,\n we will innovate the database industry as a whole. \n Our vision is to create a smarter world by connecting all data with Graphs.",
                            style: GoogleFonts.raleway(
                              color: Colors.black,
                              fontSize: 20.0.sp,
                            ),
                            textAlign: TextAlign.center),
                        SizedBox(height: 200.h,),
                        Row(
                          children: [
                            Container(


                              child: Column(
                                children: [
                                  Text(("Who are we and,\n why should you care ?"), style: GoogleFonts.raleway(
                                    color: Colors.black,
                                    fontSize: 40.0.sp,
                                  ),),
                                  SizedBox(height: 20.h,),
                                  Row(
                                    children: [
                                      SizedBox(width: 50.w,),
                                      Text("The Global Leader of Graph Business Solutions\n"
                                          " Bitnine transcends big data problems \n by creating solutions that are consistently evolving.\n "
                                          "Bitnine was founded on principles of collaboration,\n innovation, science and creativity. \n "
                                          "This is reflected in the company culture \n where the employees are not only highly skilled,\n "
                                          "they are highly passionate about what they do.\nOur primary objective is to achieve business\n "
                                          "outcomes that position your company for long term success.\n So when your organization is facing "
                                          "a big data challenge,\n do not feel overwhelmed, we will face that challenge with you and prevail.\n"
                                          " This is our mission. This is our calling. This is our promise to you!", style: GoogleFonts.raleway(
                                        color: Colors.black,
                                        fontSize: 20.0.sp,
                                      ),textAlign: TextAlign.start,),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 400.w,
                              height: 400.h,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/circle.png'),
                                    fit: BoxFit.fill,
                                  ),
                                )
                            )
                          ],
                        ),
                        SizedBox(height: 100.h,)

                        ]
                    ),
                  ),
                  Container(
                    key: keyBlog,

                    color: Colors.white,
                    child: Column(children: [
                      SizedBox(
                        height: 150.h,
                      ),
                      Text(
                        'BLOG',
                        style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 40.0.sp,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                          "Subscribe to our newsletter and get updated on \n the latest information of our graph technology.",
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 20.0.sp,
                          ),
                          textAlign: TextAlign.center),
                      SizedBox(
                        height: 70,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor:
                            Colors.amber, // Text Color (Foreground color)
                          ),
                          child: Text(
                            "SUBSCRIBE",
                            style: GoogleFonts.raleway(
                              color: Colors.black,
                              fontSize: 15.0.sp,
                            ),
                          ))
                    ]),
                  ),

                ],
              ),
            )
          ]),
    );
  }
}
