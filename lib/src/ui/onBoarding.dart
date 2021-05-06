import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart' as lib;
import 'package:untitled/src/ui/SigninPage.dart';
import 'package:untitled/src/widget/onBoardingWidget.dart';

import 'RegisterPage.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => SigninPage()),
    );
  }

  Widget _buildFullscrenImage() {
    return Image.asset(
      'assets/fullscreen.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('asstes/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle =
        TextStyle(fontSize: 17.0, color: Colors.white, fontFamily: 'font1');
    const titleStyle = TextStyle(
        fontSize: 28.0,
        fontWeight: FontWeight.w700,
        color: Colors.amber,
        fontFamily: 'font2');

    const pageDecoration = const lib.PageDecoration(
      titleTextStyle: titleStyle,
      bodyTextStyle: bodyStyle,
      titlePadding: EdgeInsets.only(top: 50, bottom: 50),
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Color(0xff4a707a),
      imagePadding: EdgeInsets.only(top: 50),
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Color(0xff4a707a),
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: _buildImage('flutter.png', 100),
          ),
        ),
      ),

      pages: [
        lib.PageViewModel(
          title: "Process",
          body:
              "The Basic Local Alignment Search Tool (BLAST) find regions of local similarity between nucleotide sequences.",
          image: _buildImage('img1.png', 200),
          decoration: pageDecoration,
        ),
        lib.PageViewModel(
          title: "Algorithm",
          body:
              "The program compares nucleotide sequences to sequence in a database and calculates the statistical significance of the matches.",
          image: _buildImage('img2.png', 200),
          decoration: pageDecoration,
        ),
        lib.PageViewModel(
          title: "Blast Output Visualisation",
          body:
              "BLAST finds similar sequences. by locating short matches between the two sequences. This process to of finding similar sequences is called seeding.",
          image: _buildImage('img3.png', 200),
          decoration: pageDecoration,
        ),
        lib.PageViewModel(
          titleWidget: Text('Get Started!',
              style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontFamily: 'font2')),
          bodyWidget: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                    child: Text(
                      'REGISTRATION',
                      style: TextStyle(color: Color(0xff4a707a)),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      )),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      elevation: MaterialStateProperty.all(0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account ?',
                      style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.white,
                          fontFamily: 'font1'),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SigninPage()));
                      },
                      child: Text(
                        'Sign in',
                        style: titleStyle.merge(
                            TextStyle(fontFamily: 'Font1', fontSize: 13)),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          image: _buildImage('search.png', 145),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
            fullScreen: false,
            bodyFlex: 2,
            imageFlex: 2,
          ),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      //rtl: true, // Display as right-to-left
      skip: const Text('Skip'),
      skipColor: Colors.white,
      next: const Text(''),
      animationDuration: 1,
      done: Text('Done',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),

      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const lib.DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeColor: Colors.white,
        activeSize: Size(12.0, 12.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Color(0xff4a707a),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
