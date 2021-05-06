import 'package:flutter/material.dart';
import 'package:untitled/sizes/size.dart';
import 'package:untitled/src/ui/RegisterPage.dart';
import 'package:untitled/style/appcolors.dart';
import 'HomePage.dart';

class SigninPage extends StatefulWidget {
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  bool obscure = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 50, right: 50),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: hieght(context) * 0.02,
                  ),
                  Container(
                    width: width(context) * 0.3,
                    height: hieght(context) * 0.25,
                    child: Image.asset(
                      'asstes/search.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: email,
                    showCursor: false,
                    style: TextStyle(fontFamily: 'font1', fontSize: 15),
                    decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          fontFamily: 'font1',
                          fontSize: 15,
                          color: Colors.grey.shade700,
                        )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: password,
                    obscureText: obscure,
                    showCursor: false,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(fontFamily: 'font1', fontSize: 15),
                    decoration: InputDecoration(
                        isDense: true,
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                obscure = !obscure;
                              });
                            },
                            icon: Icon(
                              obscure ? Icons.visibility : Icons.visibility_off,
                              color: Colors.grey.shade700,
                            )),
                        hintText: 'Password',
                        // contentPadding: EdgeInsets.only(right: 35),
                        hintStyle: TextStyle(
                          fontFamily: 'font1',
                          fontSize: 15,
                          color: Colors.grey.shade700,
                        )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Forget Password!',
                      style: TextStyle(color: Colors.cyan, fontFamily: 'font1'),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 150,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xff4a707a)),
                        elevation: MaterialStateProperty.all(0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'It\'s First Time Here? ',
                        style: TextStyle(
                          fontSize: 13.0,
                          fontFamily: 'font1',
                          color: Colors.grey.shade700,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()));
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                              fontFamily: 'Font1',
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                              color: mainColor),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }
}
