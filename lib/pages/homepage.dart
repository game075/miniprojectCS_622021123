import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Account Data")),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ProfileImage(),
            Row1(),
            Row2(),
            Row3(),
            Row4(),
          ],
        ),
      ),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Image.asset(
        "images/myprofile.jpg",
      ),
    );
  }
}

class Row4 extends StatelessWidget {
  const Row4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.email),
        Text(
          "622021123@tsu.ac.th",
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}

class Row3 extends StatelessWidget {
  const Row3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.phone_android),
        Text(
          "0611796300",
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}

class Row2 extends StatelessWidget {
  const Row2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.cake),
        Text(
          "2 December 2000",
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}

class Row1 extends StatelessWidget {
  const Row1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.person),
        Text(
          "Peerathat Boonthai",
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
