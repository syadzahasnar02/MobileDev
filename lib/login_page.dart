import 'package:belajarflutter/component/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Login Page")),
       body: Column(
        children: [

          SizedBox(height: 80),

          // Judul
          Text(
            "Log in",
            style: TextStyle(
              fontSize: 40,
              color: Colors.black,
            ),
          ),

          SizedBox(height: 30),

          // Username
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Container(
            margin: EdgeInsets.all(10),
            child: MyTextField(
              myHint: "input username",
              txtController: txtUsername,
              radius: 10,
              ),
            ),

                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Nomor HP
          Container(
            margin: EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Use phone number instead",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.lightBlue,
                ),
              ),
            ),
          ),

          SizedBox(height: 20),

          // Password
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PASSWORD",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.lightBlue,
                  ),
                ),

                SizedBox(height: 10),

                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 30),

          // Login Button
          Container(
            width: 430,
            height: 65,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: Text(
                "Log in",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          SizedBox(height: 35),

          // Forgot password
          Text(
            "Forgot your password?",
            style: TextStyle(
              fontSize: 18,
              color: Colors.lightBlue,
            ),
          ),

          SizedBox(height: 100),

          // OR
          Row(
            children: [
              Expanded(
                child: Divider(),
              ),

              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "OR",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
              ),

              Expanded(
                child: Divider(),
              ),
            ],
          ),

          SizedBox(height: 30),

          // Google
          Container(
            width: 430,
            height: 65,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: Text(
                "🌈  Continue with Google",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          SizedBox(height: 25),

          // Passkey
          Container(
            width: 430,
            height: 65,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: Text(
                "☝  Sign in with passkey",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          SizedBox(height: 70),

          // Save login
          Text(
            "☑ Save Login Info on your device",
            style: TextStyle(
              fontSize: 17,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}