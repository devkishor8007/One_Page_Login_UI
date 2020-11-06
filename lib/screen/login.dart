import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _putUser = TextEditingController();
  TextEditingController _putPassword = TextEditingController();

  bool _val = false;
  void _onChanged(bool val) {
    setState(() {
      _val = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Login",
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 9),
            buildRow(),
            SizedBox(height: 40),
            buildTextUserFormField(),
            SizedBox(height: 10),
            buildTextPasswordFormField(),
            SizedBox(height: 15),
            buildRowSecond(),
            SizedBox(height: 18),
            buildCenterButton(size),
            SizedBox(height: 18),
            buildCenterOther(),
            SizedBox(height: 18),
            buildRowThird(),
          ],
        ),
      )),
    );
  }

  Row buildRow() {
    return Row(
      children: [
        SizedBox(
            child: Text(
          "Don't have an account? ",
          style: TextStyle(fontSize: 17),
        )),
        SizedBox(
          child: Text(
            " Create your account.",
            style: TextStyle(fontSize: 17, color: Colors.red),
          ),
        ),
      ],
    );
  }

  TextFormField buildTextUserFormField() {
    return TextFormField(
      controller: _putUser,
      decoration: InputDecoration(
        labelText: "Username",
        suffixIcon: Icon(Icons.person),
      ),
    );
  }

  TextFormField buildTextPasswordFormField() {
    return TextFormField(
      controller: _putPassword,
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        suffixIcon: Icon(Icons.lock),
      ),
    );
  }

  Row buildRowSecond() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
            child: Row(
          children: [
            Checkbox(value: _val, onChanged: _onChanged),
            Text(
              "Remember Me ",
              style: TextStyle(fontSize: 17),
            ),
          ],
        )),
        SizedBox(
          child: Text(
            "Forgot Password?",
            style: TextStyle(fontSize: 17, color: Colors.red),
          ),
        ),
      ],
    );
  }

  Center buildCenterButton(Size size) {
    return Center(
      child: Container(
        height: size.height * 0.6 / 8,
        width: size.width * 0.6 / 1,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(29), color: Colors.green),
        child: Text(
          "Login".toUpperCase(),
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }

  Center buildCenterOther() {
    return Center(
      child: Text(
        "Or Login with",
        style: TextStyle(color: Colors.grey, fontSize: 19),
      ),
    );
  }

  Row buildRowThird() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(height: 60, child: Image.asset("assets/fac.png")),
        SizedBox(width: 7),
        Container(height: 60, child: Image.asset("assets/twi.png")),
        SizedBox(width: 7),
        Container(height: 60, child: Image.asset("assets/google.png")),
      ],
    );
  }
}
