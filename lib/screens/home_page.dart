import 'package:alarm/screens/signin.dart';
import 'package:flutter/material.dart';
import 'package:alarm/const/color.dart';
import 'package:alarm/styles/text_style.dart';
import 'auth_service.dart';
import 'navigation_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(margin: EdgeInsets.only(right: 95)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {
              AuthProviderService.instance.signOut();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SignInPage()),
              );
            },
            color: cDongker,
          ),
        ],
      ),
      backgroundColor: cBackground,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                //color: cGrey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hi, Irwin!', style: sUserText()),
                    SizedBox(height: 5),
                    Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          color: const Color(0xffe74c3c),
                        ),
                        children: [
                          TextSpan(
                            text: 'Kamis',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: ', 19 Desember 2020',
                            style: TextStyle(
                              color: const Color(0xff34495e),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 280,
                    //color: cLightGrey,
                    margin: EdgeInsets.only(top: 0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/work-time.png',
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Shift B',
                          style: TextStyle(
                            fontSize: 54,
                            color: cDarkMaroon,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          'Working Hours 8.00 to 16.00',
                          style: TextStyle(
                            fontSize: 10,
                            color: const Color(0xff34495e),
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Daily Operations',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      color: const Color(0xff34495e),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(left: 0, top: 10),
                      width: 300,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 1),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/icon-coffee.png'),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Break',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  Text('12.00 - 13.00'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(left: 0, top: 10),
                      width: 300,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 1),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/cleaning-mop.png'),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sidejob Sebelum Kerja',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  Text('Sapu & Pel Tangga CSC 1'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(left: 0, top: 10),
                      width: 300,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 1),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/cleaning-mop.png'),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sidejob Sesudah Kerja',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  Text('Vakum Area Workstation CSC 2'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
