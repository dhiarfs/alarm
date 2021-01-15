import 'package:alarm/const/color.dart';
import 'package:flutter/material.dart';
//import 'home_page.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart';

class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(fontSize: 24, color: cDongker, fontWeight: FontWeight.w800),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: cDongker,
          onPressed: () {},
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 38),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1564568979181-0b86b0f1f2b4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 24),
            TesDoank(
              label: 'Username',
              pw: false,
            ),
            SizedBox(height: 8),
            TesDoank(
              label: 'Nama Lengkap',
              pw: false,
            ),
            SizedBox(height: 8),
            TesDoank(
              label: 'E-mail',
              pw: false,
            ),
            SizedBox(height: 8),
            TesDoank(
              label: 'Password',
              pw: true,
            ),
            SizedBox(height: 15),
            RaisedButton(
              color: cDarkMaroon,
              onPressed: () {
              },
              child: Container(
                height: 40,
                margin: EdgeInsets.symmetric(horizontal: 38),
                child: Center(
                  child: Text(
                    'SIMPAN',
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

class TesDoank extends StatelessWidget {
  final String label;
  final bool pw;
  TesDoank({this.label, this.pw});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: cDongker,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
        SizedBox(height: 5),
        TextField(
          obscureText: pw,
          decoration: InputDecoration(
              //border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 0, bottom: 0, left: 15),
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: cDongker),
              ),
              hintText: label),
        ),
      ],
    );
  }
}


