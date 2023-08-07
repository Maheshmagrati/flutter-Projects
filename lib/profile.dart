import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 6, 6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/profile.png'),
            ),
            Text(
              'User Name',
              style: TextStyle(
                fontSize: 40.0,
                color: Color.fromARGB(255, 249, 247, 247),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Gender',
              style: TextStyle(
                fontSize: 20.0,
                color: Color.fromARGB(255, 253, 252, 252),
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: const Color.fromARGB(255, 6, 6, 6),
              ),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: const Color.fromARGB(255, 6, 6, 6),
                  ),
                  title: Text(
                    '+977 9876543210',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 6, 6, 6),
                        fontSize: 20.0),
                  ),
                )),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: const Color.fromARGB(255, 7, 7, 7),
                  ),
                  title: Text(
                    'email@example.com',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: const Color.fromARGB(255, 7, 7, 7)),
                  ),
                )),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: const Color.fromARGB(255, 7, 7, 7),
                  ),
                  title: Text(
                    'Address',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: const Color.fromARGB(255, 9, 9, 9)),
                  ),
                )),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  title: Text(
                    'About Yourself',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: const Color.fromARGB(255, 10, 10, 10)),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
