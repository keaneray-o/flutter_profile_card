import 'package:flutter/material.dart';

class Aboutme extends StatelessWidget {
  const Aboutme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About me', 
        style: TextStyle(fontWeight: FontWeight.bold,
        ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: <Widget>[
              /**
               * TEXT NAME
               */
              Text('Keane Rayo Prasetya'.toUpperCase(), 
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(
                height: 10,
              ),
              /**
               * SPACER
               */
              Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 
              /**
               * 
               */
              style: TextStyle(),
              textAlign: TextAlign.justify,
              ),
              /**
               * SPACER
               */
              SizedBox(
                height: 10,
              ),
              /**
               * CARD CONTAINER ANDROID
               */
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      offset: Offset(2, 3),
                      color: Colors.black,
                    )
                  ],
                ) ,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(
                          15
                          ),
                        ),
                      child: Icon(
                        Icons.android,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Android Project',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          Text('10 APK'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Text('Experience'),
            ],
          ),
        ),
      ),
    );
  }
}
