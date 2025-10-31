import 'package:flutter/material.dart';
import 'package:flutter_application_1/DetailProfile.dart';

class Aboutme extends StatelessWidget {
  const Aboutme({super.key});

  final List<String> badgeList = const <String>[
    'https://i.pinimg.com/1200x/6a/14/d9/6a14d9305990561387b3a53667eb1500.jpg',
    'https://i.pinimg.com/1200x/bf/f1/74/bff174108b0da247d78bafdfd571de8b.jpg',
    'https://i.pinimg.com/736x/79/d1/78/79d178c5a4ead9b21928a2c163d4dcb5.jpg',
    'https://i.pinimg.com/1200x/39/38/1e/39381edbe820293cee860fd24b906adc.jpg',
    'https://i.pinimg.com/1200x/08/38/6f/08386f74faa8bf862327d3d125a94668.jpg',
    'https://i.pinimg.com/736x/be/29/90/be29902a5d5510bb2cc033fb38d3be64.jpg',
    'https://i.pinimg.com/736x/46/5e/7c/465e7c7fd8729ee3b72e3abfb0e229f5.jpg',
    'https://i.pinimg.com/736x/16/6d/48/166d48c155adf533b37c2907477fd696.jpg',
    '👍',
    '👌',
  ];
  final title = 'Keane Rayo Prasetya';

  /**
   * tampilkan data image dari internet menggunakan
   * listview, buat imagenya menjadi bentuk lingkaran
   */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About me', style: TextStyle(fontWeight: FontWeight.bold)),
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
                Image.asset(
                  'assets/Slice 30 1 (1).png',
                  width: 100,
                  height: 100,
                ),
                /**
                 * TEXT NAME
                 */
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    title.toUpperCase(),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Michroma',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                /**
                 * SPACER
                 */
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                  /**
                 * TEXT ABOUT
                 */
                  style: TextStyle(),
                  textAlign: TextAlign.justify,
                ),
                /**
                 * SPACER
                 */
                SizedBox(height: 10),
                /**
                 * CARD CONTAINER ANDROID
                 */
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                                offset: Offset(2, 3),
                                color: Colors.black,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.circular(20),
                                ),

                                child: Icon(
                                  Icons.gamepad,
                                  size: 75,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'GAME PROJECT',
                                      style: TextStyle(
                                        fontFamily: 'Michroma',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text('10 GAMES'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
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
                              ),
                            ],
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.circular(15),
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
                                    Text(
                                      'Android Project',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Michroma',
                                      ),
                                    ),
                                    Text('10 APK'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (Context) => Detailprofile(title: title,),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'detail profile'.toUpperCase(),
                        style: TextStyle(
                          fontFamily: 'Michroma',
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                /**
                 * SCHEDULE
                 */
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(69, 8, 8, 8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Schedule'.toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Michroma',
                          fontSize: 18,
                          letterSpacing: 2,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
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
                    Container(
                      //width: double.infinity, //memberikan lebar full screen
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(54, 0, 0, 0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'BELAJAR',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Michroma',
                              ),
                            ),
                            Icon(Icons.timer, size: 30),
                            Text(
                              '07.30 - 14.30',
                              style: TextStyle(
                                fontFamily: 'Micrhoma',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    /**
                     * MEMBACA
                     */
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(54, 0, 0, 0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'MEMBACA',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Michroma',
                              ),
                            ),
                            Icon(Icons.book, size: 30),
                            Text('20.00 - 21.00', style: TextStyle()),
                          ],
                        ),
                      ),
                    ),
                    /**
                     * TIDUR
                     */
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(54, 0, 0, 0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'TIDUR',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Michroma',
                              ),
                            ),
                            Icon(Icons.bed, size: 30),
                            Text('21.00 - 03.15', style: TextStyle()),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(101, 99, 99, 99),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      'BADGES',
                      style: TextStyle(
                        fontFamily: 'Michroma',
                        letterSpacing: 5,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 110,
                  child: ListView(
                    /**
                     * badgeList = variable list diatas
                     * element = nama variable dari map
                     * return = tempat widget dari data list
                     */
                    scrollDirection: Axis.horizontal,
                    children: badgeList.map((e) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 114, 114, 114),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text('${e}', style: TextStyle(fontSize: 60)),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: badgeList.length,
                    itemBuilder: (BuildContext contex, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('${badgeList[index]}'),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
