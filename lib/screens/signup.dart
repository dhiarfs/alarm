import 'package:alarm/const/color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String _email, _password;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: cWhite,
          onPressed: () {},
        ),
      ),
      backgroundColor: cDongker,
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 0),
              width: 150,
              color: cWhite,
            ),
            Image.asset('assets/images/logo.png'),
            SizedBox(height: 5),
            SizedBox(height: 32),
            KolomText(
              label: 'Username',
              pw: false,
            ),
            SizedBox(height: 24),
            KolomText(
              label: 'Nama Lengkap',
              pw: false,
            ),
            SizedBox(height: 24),
            KolomText(
              label: 'E-Mail',
              pw: false,
            ),
            SizedBox(height: 24),
            KolomText(
              label: 'Password',
              pw: true,
            ),
            SizedBox(height: 24),
            RaisedButton(
              color: cDarkMaroon,
              onPressed: () {
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              ),
              child: Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 38),
                child: Center(
                  child: Text(
                    'REGISTER',
                    style: TextStyle(
                        color: cWhite, fontSize: 18, fontWeight: FontWeight.w800),
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
          style: TextStyle(color:cWhite, fontSize: 18),
          obscureText: pw,
          decoration: InputDecoration(
            hintText: 'Masukkan '+label,
            hintStyle: TextStyle(color: cLightGrey),
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 0, bottom: 0, left: 10),
            //border: OutlineInputBorder(),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: cLightGrey, width: 1.45 ),
            ),
          ),
        ),
      ],
    );
  }
}
