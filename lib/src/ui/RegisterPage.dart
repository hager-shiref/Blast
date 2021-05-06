import 'package:flutter/material.dart';
import 'package:untitled/sizes/size.dart';
import 'package:untitled/style/appcolors.dart';
import 'HomePage.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController firstName = new TextEditingController();
  TextEditingController lastName = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController passwordConfirm = new TextEditingController();
  bool obscure = true;
  bool terms = false;

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: GestureDetector(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);

              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    SafeArea(
                        child: Container(
                            width: width(context) * 0.3,
                            height: hieght(context) * 0.25,
                            child: Image.asset('asstes/search.png'))),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50, right: 50),
                      child: TextField(
                        controller: firstName,
                        showCursor: false,
                        style: TextStyle(fontFamily: 'font1', fontSize: 15),
                        decoration: InputDecoration(
                            hintText: 'First Name',
                            hintStyle: TextStyle(
                              fontFamily: 'font1',
                              fontSize: 15,
                              color: Colors.grey.shade700,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50, right: 50),
                      child: TextField(
                        controller: lastName,
                        showCursor: false,
                        style: TextStyle(fontFamily: 'font1', fontSize: 15),
                        decoration: InputDecoration(
                            hintText: 'Last Name',
                            hintStyle: TextStyle(
                              fontFamily: 'font1',
                              fontSize: 15,
                              color: Colors.grey.shade700,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50, right: 50),
                      child: TextField(
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
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50, right: 50),
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          TextField(
                            controller: password,
                            obscureText: obscure,
                            showCursor: false,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(fontFamily: 'font1', fontSize: 15),
                            decoration: InputDecoration(
                                hintText: 'Password',
                                contentPadding: EdgeInsets.only(right: 35),
                                hintStyle: TextStyle(
                                  fontFamily: 'font1',
                                  fontSize: 15,
                                  color: Colors.grey.shade700,
                                )),
                          ),
                          IconButton(
                              splashRadius: 2,
                              onPressed: () {
                                setState(() {
                                  obscure = !obscure;
                                });
                              },
                              icon: Icon(
                                obscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                size: 18,
                                color: Colors.grey.shade700,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50, right: 50),
                      child: TextField(
                        controller: passwordConfirm,
                        showCursor: false,
                        obscureText: true,
                        style: TextStyle(fontFamily: 'font1', fontSize: 15),
                        decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(
                              fontFamily: 'font1',
                              fontSize: 15,
                              color: Colors.grey.shade700,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SafeArea(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                              value: terms,
                              activeColor: mainColor,
                              onChanged: (v) {
                                setState(() {
                                  terms = !terms;
                                });
                              }),
                          SizedBox(
                              width: MediaQuery.of(context).size.width - 70,
                              child: Text(
                                'Create an Account means you agree with our Terms and Conditions and Privacy Policy.',
                                style: TextStyle(
                                  fontSize: 13.0,
                                  fontFamily: 'font1',
                                  color: Colors.grey.shade700,
                                ),
                              )),
                          // InkWell(
                          //   onTap: (){
                          //     Navigator.push(context, MaterialPageRoute(builder: (context) => SigninPage()));
                          //   },
                          //   child: Text('Register',style: TextStyle(fontFamily: 'Font1',fontWeight: FontWeight.w600,fontSize: 13,color: Colors.cyan),),
                          // )
                        ],
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
                          'Sign up',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff4a707a)),
                          elevation: MaterialStateProperty.all(0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('asstes/$assetName', width: width);
  }
}
