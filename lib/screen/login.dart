import 'package:flutter/material.dart';
import 'package:login_UI/widget/text_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _email;
  TextEditingController _password;

  bool _val = false;
  void _onChanged(bool val) {
    setState(() {
      _val = val;
    });
  }

  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
    _password = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.04,
              horizontal: size.width * 0.02,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text(
                  "Login",
                  size: Theme.of(context).textTheme.headline4.fontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                buildRow(
                  textSays: "Don't have an account? ",
                  textCreate: " Create your account.",
                ),
                SizedBox(height: size.height * 0.05),
                textField(
                  controller: _email,
                  labelText: "Username",
                  suffixIcon: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                textField(
                  controller: _password,
                  labelText: "Password",
                  obsecure: true,
                  suffixIcon: Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: size.height * 0.04),
                rowCheckBoxText(
                  textRemember: "Remember Me",
                  textForgot: "Forgot Password?",
                ),
                SizedBox(height: size.height * 0.05),
                elevatedButton(size),
                SizedBox(height: size.height * 0.04),
                Center(
                  child: text(
                    "Or Login with",
                    color: Colors.grey,
                    size: 19,
                  ),
                ),
                SizedBox(height: size.height * 0.04),
                alernativeLogin(size),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildRow({String textSays, String textCreate}) {
    return Row(
      children: [
        SizedBox(
            child: text(
          textSays,
          size: 17,
          color: Colors.white,
        )),
        SizedBox(
          child: text(
            textCreate,
            color: Colors.red,
            size: 17,
          ),
        ),
      ],
    );
  }

  Widget textField({
    String labelText,
    TextEditingController controller,
    Widget suffixIcon,
    bool obsecure,
  }) {
    return TextField(
      style: TextStyle(
        color: Colors.white,
      ),
      controller: controller,
      obscureText: obsecure ?? false,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          color: Colors.grey,
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }

  Widget rowCheckBoxText({
    String textRemember,
    String textForgot,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
            child: Row(
          children: [
            Checkbox(
              value: _val,
              onChanged: _onChanged,
            ),
            text(
              textRemember,
              size: 17,
              color: Colors.white,
            ),
          ],
        )),
        SizedBox(
          child: text(textForgot, size: 17, color: Colors.red),
        ),
      ],
    );
  }

  Widget elevatedButton(Size size) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          minimumSize: Size(size.width * 0.5, size.height * 0.06),
        ),
        child: text("Login".toUpperCase(), color: Colors.white, size: 24),
      ),
    );
  }

  Widget alernativeLogin(size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        circleAvatar(
          backgroundImage: AssetImage("assets/fac.png"),
        ),
        SizedBox(
          width: size.width * 0.03,
        ),
        circleAvatar(
          backgroundImage: AssetImage("assets/twi.png"),
        ),
        SizedBox(
          width: size.width * 0.03,
        ),
        circleAvatar(
          backgroundImage: AssetImage("assets/google.png"),
        ),
      ],
    );
  }

  Widget circleAvatar({ImageProvider<Object> backgroundImage}) {
    return CircleAvatar(
      radius: 26,
      backgroundImage: backgroundImage,
    );
  }
}
