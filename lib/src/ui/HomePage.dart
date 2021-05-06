import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:untitled/src/ui/Articels.dart';
import 'package:untitled/style/appcolors.dart';
import 'package:youtube_plyr_iframe/youtube_plyr_iframe.dart';
import 'package:untitled/src/ui/search.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var blastDiscription =
      "BLAST finds regions of similarity between biological sequences. The program compares nucleotide or protein sequence to database sequences and calculates the statistical significance.";
  // ignore: close_sinks
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'v1r35aU3z8A',
    params: YoutubePlayerParams(
      showControls: true,
      showFullscreenButton: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: Row(
            children: [
              _buildImage(
                'search.png',
                25,
              ),
              Text(
                'BLASTn',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      height: 110,
                      color: mainColor,
                      child: Center(
                        child: SizedBox(
                          //width: 150,
                          child: ListTile(
                            leading: Container(
                              width: 60,
                              height: 170,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  image: DecorationImage(
                                      image: AssetImage('asstes/profile.png'),
                                      fit: BoxFit.cover)),
                            ),
                            title: Text(
                              'afnan',
                              style: TextStyle(fontFamily: 'font2'),
                            ),
                            subtitle: Text('afnan@gmail.com',
                                style: TextStyle(fontFamily: 'font2')),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ArticelsPage()));
                            },
                            leading: Icon(
                              Icons.article,
                              color: mainColor,
                            ),
                            title: Text(
                              'Articles',
                              style:
                                  TextStyle(fontSize: 15, fontFamily: 'font2'),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.bookmark,
                              color: mainColor,
                            ),
                            title: Text(
                              'Saved Search',
                              style:
                                  TextStyle(fontSize: 15, fontFamily: 'font2'),
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.settings, color: mainColor),
                            title: Text(
                              'Settings',
                              style:
                                  TextStyle(fontSize: 15, fontFamily: 'font2'),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.headset,
                              color: mainColor,
                            ),
                            title: Text(
                              'About Us',
                              style:
                                  TextStyle(fontSize: 15, fontFamily: 'font2'),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.arrow_back_ios,
                              color: mainColor,
                            ),
                            title: Text(
                              'Logout',
                              style:
                                  TextStyle(fontSize: 15, fontFamily: 'font2'),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('Privacy Policy'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('Terms and Conditions'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('Help'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(bottom: 25),
                    child: Text(
                      'What is BLAST?',
                      style: TextStyle(
                          fontFamily: 'font2',
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    )),
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: YoutubePlayerIFrame(
                      controller: _controller,
                      aspectRatio: 16 / 9,
                    ),
                  ),
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 40,
                      child: Text(
                        blastDiscription,
                        style: TextStyle(
                            fontFamily: 'font1',
                            fontSize: 19,
                            color: Colors.grey.shade600),
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          showAlertDialog(context);
                        },
                        child: Text(
                          '        Learn More...',
                          style: TextStyle(
                              fontSize: 19,
                              fontFamily: 'font1',
                              color: mainColor),
                        )),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 15),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchPage()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 120,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('asstes/img11.jpeg'),
                              fit: BoxFit.contain)),
                    ),
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Nucleotide ',
                        style: TextStyle(
                            fontFamily: 'font2',
                            fontSize: 18,
                            color: Colors.red),
                      ),
                      Text(
                        '>',
                        style: TextStyle(fontFamily: 'font2', fontSize: 18),
                      ),
                      Text(
                        ' Nucleotide',
                        style: TextStyle(
                            fontFamily: 'font2',
                            fontSize: 18,
                            color: Colors.red),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('asstes/$assetName', width: width);
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(
        "Basic Local Alignment Search Tool",
        style: TextStyle(color: mainColor),
      ),
      content: Text(
          "BLAST finds regions of similarity between biological sequences.The program compares nucleotide or protein sequence to database sequences and calculates the statistical significance of matches. Blast can be used infer functional and evolutionary relationships between Sequences as well as help identify members of gene families."),
      actions: [],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
