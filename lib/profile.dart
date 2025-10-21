import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard
({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('keane rayo prasetya'),
        ),
        /**
         * Row dan column bisa memiliki banyak
         * widget, row itu kesamping
         * column itu ke bawah
         */
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              
              child: Container(
                child: Text(
                  'Nama',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.redAccent,
                    fontFamily: 'Poppins',//harus ada fontnya
                  ),
                  ),
              ),
            ),
            Text('KEANE RAYO PRASETYA',
            style: TextStyle(
              backgroundColor: Color.fromARGB(
                200,
                100,
                100,
                100,
              )
            ),)
          ],
        ),
      ),  
      debugShowCheckedModeBanner: false,
    );
  }
}
