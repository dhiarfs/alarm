import 'package:alarm/const/color.dart';
import 'package:alarm/screens/home_page.dart';
import 'package:alarm/screens/navigation_page.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_button/create_button.dart';
import 'package:sign_button/sign_button.dart';
import 'auth_service.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cDongker,
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 48),
              width: 150,
              color: cWhite,
            ),
            Image.asset('assets/images/logo.png'),
            SizedBox(height: 72),
            SizedBox(height: 32),
            KolomText(
              label: 'Username',
              pw: false,
            ),
            SizedBox(height: 24),
            KolomText(
              label: 'Password',
              pw: true,
            ),
            SizedBox(height: 52),
            Container(
              width: 470,
              height: 50,
              child: SignInButton(
                buttonType: ButtonType.google,
                onPressed: () {
                  AuthProviderService.instance.signIn();
                    Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => NavigationPage()),
                  );
                },
              ),
            ),
            // RaisedButton(
            //   color: cDarkMaroon,
            //   onPressed: () {
            //   },
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(8)
            //   ),
            //   child: Container(
            //     height: 50,
            //     margin: EdgeInsets.symmetric(horizontal: 38),
            //     child: Center(
            //       child: Text(
            //         'LOGIN',
            //         style: TextStyle(
            //             color: cWhite, fontSize: 18, fontWeight: FontWeight.w800),
            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(height: 14),
            RaisedButton(
              color: Color(0xff4B6987),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                //side: BorderSide(color: cWhite)
              ),
              child: Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 38),
                child: Center(
                  child: Text(
                    'REGISTER',
                    style: TextStyle(
                        color: cWhite,
                        fontSize: 18,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class KolomText extends StatelessWidget {
  final String label;
  final bool pw;
  KolomText({this.label, this.pw});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: cWhite,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
        SizedBox(height: 5),
        TextField(
          style: TextStyle(color: cWhite, fontSize: 18),
          obscureText: pw,
          decoration: InputDecoration(
            hintText: 'Masukkan ' + label,
            hintStyle: TextStyle(color: cLightGrey),
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 0, bottom: 0, left: 10),
            //border: OutlineInputBorder(),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: cLightGrey, width: 1.45),
            ),
          ),
        ),
      ],
    );
  }
}
