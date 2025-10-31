import 'package:flutter/material.dart';

class Detailprofile extends StatelessWidget {
  final title;

  const Detailprofile({this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail $title'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                /**
                 * navigator.pop() untuk mengclose halaman
                 */
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
            Text('ini adalah halaman detail'),
          ],
        ),
      ),
    );
  }
}
