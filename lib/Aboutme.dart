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
        backgroundColor: const Color.fromARGB(36, 0, 0, 0),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: <Widget>[
                /**
                 * IMAGE PROFILE
                 */
                //CircleAvatar(radius: 50, 
                //backgroundImage: 
                //NetworkImage('assets/Slice 30 1 (1).png)' ,
                //),),
                Image.asset('assets/Slice 30 1 (1).png',
                width: 100,
                height: 100,
                ),
                /**
                 * TEXT NAME
                 */
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text('Keane Rayo Prasetya'.toUpperCase(), 
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Michroma'),
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
                 * TEXT ABOUT
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
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: const Color.fromARGB(92, 255, 255, 255),
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
                              fontFamily: 'Michroma'),
                            ),
                            Text('10 APK'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                /**
                 * SCHEDULE
                 */
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10),
                  child: Text('Schedule'.toUpperCase(), 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Michroma',
                    fontSize: 18,
                    letterSpacing: 2,
                  ),
                  ),
                ),
                //ROW SCHEDULE
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    /**
                     * BELAJAR
                     */
                    Column(
                      children: <Widget>[
                        Text('BELAJAR', style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Michroma'
                        ),
                        ),
                        Icon(Icons.timer, 
                        size: 30,),
                        Text('07.30 - 14.30',
                        style: TextStyle(
                          fontFamily: 'Micrhoma',
                          fontWeight: FontWeight.w600,
                        ),
                        ),
                      ],
                    ),
                    /**
                     * MEMBACA
                     */
                    Column(
                      children: <Widget>[
                        Text('MEMBACA',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Michroma'
                        ),
                        ),
                        Icon(Icons.book,
                        size: 30,),
                        Text('20.00 - 21.00', 
                        style: TextStyle(),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
