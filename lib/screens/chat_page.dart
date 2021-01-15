import 'package:alarm/const/color.dart';
import 'package:flutter/material.dart';
import 'package:alarm/screens/home_page.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Chat',
          style: TextStyle(
              fontSize: 24, color: cDongker, fontWeight: FontWeight.w800),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: cDongker,
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          //color: Colors.black,
          children: [
            IsiPesan(gambar:'https://images.unsplash.com/photo-1554741995-7e71ded4ae1c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=334&q=80', username: 'Kak Nabila', pesan: 'Hai adikku, semoga kita bertemu di surga'),
            IsiPesan(gambar:'https://images.unsplash.com/photo-1562939562-15d588950600?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80', username: 'Ali', pesan: 'Test Aplikasinya'),
            IsiPesan(gambar:'https://images.unsplash.com/photo-1564568979181-0b86b0f1f2b4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80', username: 'Bryan', pesan: 'PING!!!'),
          ],
        ),
      ),
    );
  }
}
// IsiPesan(gambar:'https://images.unsplash.com/photo-1564568979181-0b86b0f1f2b4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80', username: 'CS', pesan: 'PING!!!'),

class IsiPesan extends StatelessWidget {
  final String gambar;
  final String username;
  final String pesan;

  IsiPesan({this.gambar, this.username, this.pesan});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.5, color: cLightGrey),
        ),
      ),
      margin: EdgeInsets.symmetric(horizontal: 38),
      width: MediaQuery.of(context).size.width,
      height: 100,
      //color: Colors.black,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 55,
                height: 55,
                margin: EdgeInsets.symmetric(vertical: 20),
                // color: cDarkMaroon,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  image: DecorationImage(
                    image: NetworkImage(gambar),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 300,
            height: 70,
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username,
                  style: TextStyle(
                    fontSize: 16,
                    color: cDongker,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  pesan,
                  style: TextStyle(
                    fontSize: 14,
                    color: cGrey,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
